
/*======================================================================================
Window Functions
=====================================================================================*/
-- Basic Syntax for Window Functions in SQL
/*=========================================================================================
SELECT columns,
WINDOW_FUNCTION() OVER (
PARTITION BY partition_column
ORDER BY sort_column
RANGE | ROWS BETWEEN start AND end
) AS result_column_name
FROM table;

Explanation:
- SELECT columns: Specifies the columns to retrieve in the final result, including the resulting column of the window function.
- WINDOW_FUNCTION() OVER (...): Applies a window function to a set of rows.
- PARTITION BY partition_column: Divides the data into partitions for processing by the windowing function.
- ORDER BY sort_column: Determines the order of the rows in each partition.
- RANGE | ROWS BETWEEN start AND end: Defines the row frame for the function to apply.

================================================================================*/


-- Rownumber: create a query that displays the sales table by adding the row number
SELECT *,
        ROW_NUMBER()
        OVER(ORDER BY TotalAmount) AS Rownumber
FROM Sales
ORDER BY TotalAmount;

-- ADD the Rank with RANK() and DENSE_RANK()
SELECT *,
        RANK()
        OVER(ORDER BY TotalAmount) AS Rang
FROM Sales
ORDER BY TotalAmount;

SELECT *,
         DENSE_RANK()
        OVER(ORDER BY TotalAmount) AS Rang
FROM Sales
ORDER BY TotalAmount;

/* LEAD LAG*/
-- For each year, give the turnover of the previous year and the turnover of the following year.
SELECT YEAR(DateSale) AS Annee, SUM(TotalAmount) AS CA
FROM Sales
GROUP BY Year;




SELECT YEAR(DateSale) AS Year,
       SUM(TotalAmount) AS CA,
       LAG( SUM(TotalAmount),1,0)
       OVER(ORDER BY YEAR(DateSale)) AS CAPrevious,
       LEAD(SUM(TotalAmount),1,0)
       OVER(ORDER BY YEAR(DateSale)) AS CANext
FROM Sales
GROUP BY Year;

/*FIRST_VALUE() et LAST_VALUE()*/
/*ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING:
 Ensures that the FIRST_VALUE() function considers all rows in the partitioning window to find the first purchased product*/
-- For each customer, what was the first product they purchased?
            SELECT ClientID, 
       ProductID, 
       DateSale,
       FIRST_VALUE(ProductID)
       OVER(PARTITION BY ClientID
       ORDER BY DateSale
           ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) As FirstSale
FROM Sales;

-- For each customer, what was the first product they purchased?
SELECT ClientID, 
                      ProductID, 
       DateSale,
       LAST_VALUE(ProductID)
       OVER(PARTITION BY ClientID
      ORDER BY DateSale
             ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) As LastSale
FROM Sales;



/*===============================================================================
Mastering CTEs
=================================================================================*/
/*
CTEs, or 'Common Table Expressions', allow you to create temporary result sets accessible in a SELECT, INSERT, UPDATE or DELETE query. They are defined with the WITH keyword followed by the CTE name and the AS keyword that introduces the CTE query.
General Form:
WITH CTE_Name AS (
-- CTE query here
)
SELECT * FROM CTE_Name;
Usage:
- Simplify complex joins and subqueries.
- Enable recursion for hierarchical data processing.
- Improve readability and maintainability of SQL code.
Note:
- A CTE is only valid in the context of a single SQL statement.
- Recursive CTEs must include a UNION ALL between the anchor and recursive members.
- Multiple CTEs can be defined in a single WITH clause, separated by commas.
*/
-- write a query that allows you to obtain the top 3 best customers (in terms of turnover) by year

-- Give the turnover for each customer
SELECT ClientID, SUM(TotalAmount) AS CA
FROM Sales
GROUP BY ClientID;



-- Give the turnover per year for each customer
SELECT ClientID,
	YEAR(DateSale) AS Year, SUM(TotalAmount) AS CA
FROM Sales
GROUP BY ClientID, Year;
-- Ranking per Year
             CREATE VIEW Temp as (
	SELECT ClientID,
		YEAR(DateSale) AS Year,
		SUM(TotalAmount) AS CA,
		RANK()
		OVER(PARTITION BY YEAR(DateSale)
			ORDER BY SUM(TotalAmount) DESC) As Ranking
	FROM Sales
	GROUP BY ClientID, Year);
SELECT *
FROM Temp
WHERE Ranking BETWEEN 1 AND 3; 
-- Second option: Sub-query
SELECT *
FROM (SELECT ClientID,
		YEAR(DateSale) AS Annee,
		SUM(TotalAmount) AS CA,
		RANK()
		OVER(PARTITION BY YEAR(DateSale)
			ORDER BY SUM(TotalAmount) DESC) As Ranking
	FROM DateSale
	GROUP BY ClientID, Year) As Temp
WHERE Ranking BETWEEN 1 AND 3; 

-- Third option CTE
WITH tempCA AS (
	SELECT ClientID,
			YEAR(DateSale) AS Year,
			SUM(TotalAmount) AS CA,
			RANK()
			OVER(PARTITION BY YEAR(DateSale)
				ORDER BY SUM(TotalAmount) DESC) As Ranking
		FROM Sales
		GROUP BY ClientID, Year
)
SELECT *
FROM tempCA
WHERE Ranking BETWEEN 1 AND 3;
WITH tempCA AS (
	SELECT ClientID,
			YEAR(DateSale) AS Year,
			SUM(TotalAmount) AS CA,
			RANK()
			OVER(PARTITION BY YEAR(DateSale)
				ORDER BY SUM(TotalAmount) DESC) As Ranking
		FROM Sales
		GROUP BY ClientID, Year
)
SELECT *
FROM tempCA
WHERE Ranking BETWEEN 1 AND  3 ;


-- List of customers who spent more than the average spending of all customers:
-- Give the turnover for each customer
WITH temp1 AS (
SELECT ClientID, SUM(TotalAmount) AS CA
FROM Sales
GROUP BY ClientID
)
SELECT *
FROM temp1
WHERE CA > (SELECT AVG(TotalAmount) AS Average FROM Sales);

SELECT *
FROM (
	SELECT ClientID, SUM(TotalAmount) AS CA
	FROM Sales
	GROUP BY ClientID) as temp
WHERE CA >(SELECT AVG(TotalAmount) AS Average FROM Sales);

SELECT AVG(TotalAmount) AS Average FROM Sales;

SELECT ClientID, TotalAmount 
FROM Sales
WHERE TotalAmount > (SELECT AVG(TotalAmount) AS Average FROM Sales);

SELECT AVG(TotalAmount) AS Average FROM Sales



/*==================================================================================
 Set functions
==================================================================================*/
/* CTE Reusable
WITH CTE1 AS (
 SELECT * FROM TableA
), CTE2 AS (
 SELECT * FROM TableB
)
SELECT * FROM CTE1
UNION ALL
SELECT * FROM CTE2;
*/
-- UNION: Combines the results of two queries by eliminating duplicates.
/*
SELECT column FROM table1
UNION
SELECT column FROM table2;

Explanation:
- The UNION operator is used to combine the results of two separate queries.
- It eliminates duplicate rows to return only distinct rows.
- Both queries must have the same number of columns in the result, with compatible data types.
*/
-- What is the combined list of names of all employees and all customers?
SELECT LastName
FROM Employees
UNION
SELECT LastName
FROM Clients;
--Add the name of the suppliers
SELECT LastName
FROM Employees
UNION
SELECT LastName
FROM Clients
              UNION 
SELECT SupplierName AS Name
FROM Suppliers;

-- First Name and Last Name of all employees
SELECT LastName, FirstName
FROM Employees
UNION
SELECT LastName, FirstName
FROM Clients;

WITH NameClients AS (SELECT LastName, FirstName
					FROM Employes),
                    
	 NameEmployes AS (SELECT LastName, FirstName
					 FROM Employees)			
SELECT * 
FROM NameClients
UNION 
SELECT * 
FROM NameEmployes;



/*
A = (a,b,c,d) B= (e,f,g)
A UNION B
(a,b,c,d,e,f,g)*/
-- UNION ALL: Combine les résultats de deux requêtes en conservant les doublons.

/*
SELECT colonne FROM table1
UNION ALL
SELECT colonne FROM table2;

Explanation:
- The UNION ALL operator combines the results of two queries without eliminating duplicates.
- This can be useful if you want to keep all rows, including repeats.
- As with UNION, the combined queries must have results with the same number and type of columns.
*/
SELECT LastName, FirstName
FROM Employees
UNION ALL 
SELECT LastName, FirstName
FROM Clients;
-- What are all the names of employees and customers, including repeated names?
/*
(1,3,5,6) = A
(3,6,2,7)= B
A UNION B (1,3,5,6,2,7)
A INTERSECT B (3,6)*/
-- INTERSECT: Returns rows common to two queries.



/*
SELECT colonne FROM table1
INTERSECT
SELECT colonne FROM table2;
Explanation:
- The INTERSECT operator finds rows that are common to both queries.
- It is less commonly supported than UNION and UNION ALL in some database management systems.
- The two queries must have compatible result structures.
*/
-- Which employees have made more than 1000 Dollars in sales and who have made more than 10 Sales

-- EXCEPT or MINUS: Returns rows from the first query that are not present in the second.
/*
SELECT column FROM table1
EXCEPT
SELECT column FROM table2;

Explanation:
- The EXCEPT (or MINUS, depending on the database management system) operator subtracts the results of the second query from the first.
- The result contains only the unique rows from the first query that are not found in the second.
- The two queries must return the same number of columns with compatible data types.
*/
-- Which employees have never made a sale?
-- First approach
SELECT *
FROM Employees
WHERE EmployeeID NOT IN (SELECT EmployeeID FROM Sales);

-- Which employees have not managed VIP customers? (customers purchasing more than 5000 Dollars)
/*CTE Recursive
WITH RECURSIVE CTERecursive (column) AS (
SELECT column FROM InitialTable WHERE condition
UNION ALL
SELECT t.column FROM InitialTable t INNER JOIN CTERecursive c ON t.condition = c.column
)
SELECT * FROM CTERecursive;
*/
/*
INSERT INTO table (column1, column2, ..., columnN)
VALUES (value1, value2, ..., valueN);
Explanation:
- INSERT INTO table: Declares the intention to insert data into the specified table.
- (column1, column2, ..., columnN): Specifies the target columns for the insert. The order of the columns must match the order of the values provided.
- VALUES (value1, value2, ..., valueN): Defines the values to insert for the specified columns. Each set of values in parentheses represents a row to insert into the table.

Variants:
1. Inserting multiple rows:
INSERT INTO table (column1, column2)
VALUES (value1A, value2A),
(value1B, value2B),
...;
- This syntax allows you to insert multiple rows in a single command, separating each set of values with commas.

2. Insert from a selection:
INSERT INTO table1 (column1, column2)
SELECT columnA, columnB
FROM table2
WHERE condition;
- This method inserts data into table1 directly from a subset of data selected in table2 or any other table, based on a specified condition.

Tips:
- Make sure that the data types of the values match the data types of the columns.
- When inserting data into a table with an auto-incrementing ID column, it is not necessary to specify a value for that column unless you want to override the auto-incrementing behavior.
- Use the ON DUPLICATE KEY UPDATE clause to update the row if the insert results in a duplicate primary or unique key.
*/
-- Adding a new employee
INSERT INTO Employees(EmployeeID,LastName,FirstName,Email,PhoneNumber)
VALUES (200,"NJONGWA","Natacha","temp@gmail.com",0978349);

-- Replace all products <200 with 100
UPDATE Products
SET UnitPrice=100
WHERE NameProduct = "Nike Air Max";
/*
UPDATE table
SET column1 = new_value1,
column2 = new_value2,
...
WHERE filter_condition;

Explanation:
- UPDATE table: Declares the intention to update data in the specified table.
- SET column1 = new_value1, ... : Specifies the columns to update and the new values to assign to them. You can update one or more columns at the same time.
- WHERE filter_condition: Determines the rows to update using a specified condition. If the WHERE clause is omitted, all rows in the table will be updated, which is generally not recommended.

Variants:
1. Conditional update:
UPDATE table
SET column = new_value
WHERE condition_column = certain_value;
- This syntax allows you to update specific rows that match the condition stated in the WHERE clause.

2. Update with joins:
UPDATE table1
JOIN table2 ON table1.join_column = table2.join_column
SET table1.column = new_value
WHERE table2.condition_column = certain_value;
- Allows you to update a table based on data from another table, using a join condition.
Tips:
- Be careful with the WHERE clause to avoid updating more rows than intended.
- It is often useful to test your WHERE clause with a SELECT statement before running it with UPDATE, to ensure that it selects the correct rows.
- For performance reasons, try to limit the number of columns updated to only those that actually need to be changed.
- Consider using transactions to group multiple update operations into a single unit of work, allowing them all to be rolled back together in the event of an error.
*/

/*
UPDATE table
SET column1 = new_value1,
column2 = new_value2,
...
WHERE filter_condition;

Explanation:
- UPDATE table: Declares the intention to update data in the specified table.
- SET column1 = new_value1, ...: Specifies the columns to update and the new values to assign to them. You can update one or more columns at the same time.
- WHERE filter_condition: Determines which rows to update based on a specified condition. If the WHERE clause is omitted, all rows in the table will be updated, which is generally not recommended.

Variants:
1. Conditional update:
UPDATE table
SET column = new_value
WHERE condition_column = certain_value;
- This syntax allows you to update specific rows that match the condition specified in the WHERE clause.

2. Update with joins:
UPDATE table1
JOIN table2 ON table1.join_column = table2.join_column
SET table1.column = new_value
WHERE table2.condition_column = some_value;
- Allows you to update a table based on data from another table, using a join condition.


Tips:
- Be careful with the WHERE clause to avoid updating more rows than intended.
- It is often useful to test your WHERE clause with a SELECT statement before running it with UPDATE, to ensure that it selects the correct rows.
- For performance reasons, try to limit the number of columns updated to only those that actually need to be changed.
- Consider using transactions to group multiple update operations into a single unit of work, allowing them all to be rolled back together in the event of an error.
/* To Drop the table*/
/* DROP TABLE table; or DROP TABLE IF EXISTS table;
/*-- Drop the column from the columns
ALTER TABLE table
DROP COLUMN column;*/

-- Delete UnitPrice
ALTER TABLE Products
DROP COLUMN NameProduit;

--Delete multiple columns
ALTER TABLE table
DROP COLUMN colonne1
DROP COLUMN colonne1;;*/
/*Change the name of the column `old_name` to `new_name` in the table `my_table`: RENAME
ALTER TABLE my_table
CHANGE COLUMN old_name new_name new_type;*/
DROP TABLE IF EXISTS table;

