
/*===========================================================================
Mastering CASE WHEN
==============================================================================*/
/*================================================================================
Using CASE WHEN to Apply Conditional Logic
SELECT columns,
CASE
WHEN condition THEN result1
ELSE result2
END AS result_column_name
FROM table;

Explanation:
- SELECT columns: specifies the columns to retrieve in the final result, as well as the conditional column.
- CASE WHEN condition THEN result1 ELSE result2 END: applies conditional logic to the retrieved data. If the condition is true, then 'result1' is returned. Otherwise, 'result2' is used.
- AS result_column_name: assigns a name to the resulting column of the CASE expression.

This statement is useful for transforming data based on specific conditions directly in the SQL query, simplifying the data processing logic and reducing the need for conditional logic in the client application.
==============================================================*/
-- Write a SQL query to classify each product into its category
-- "Small Budget" if the unit price is <200 Dollars
-- "Medium Budget" if the unit price is between 200 and 500
-- "Large Budget" if the unit price is greater than 500
SELECT *,
            CASE 
            WHEN UnitPrice < 200 THEN "Small Budget"
            WHEN UnitPrice >= 200 AND UnitPrice <= 500 THEN "Medium Budget"
            ELSE "Large Budget"
            END AS Category
FROM Products;

-- Write a query to display for each their name, first name, employee
-- the number of sales and a label that indicates
-- whether the number of sales is less than 50, between 50 and 100 or greater than 100

SELECT EmployeeID, LastName, FirstName, 
                                    CASE
		       WHEN COUNT(SaleID) < 50 THEN "<50"
                                    WHEN COUNT(SaleID)>=50 AND COUNT(SaleID)< 100 THEN "BT 30 and 100"
                                    ELSE ">=100"
		       END AS TotalSale         
FROM Employees em
	LEFT JOIN Sales sa USING(EmployeeID)
GROUP BY EmployeeID, LastName, FirstName;







-- Create a query that gives the name, first name and category:
-- <1000 Silver if the purchases are less than 2, GOLD between 1000 and 5000, premium >5000

SELECT ClientID, LastName, FirstName, SUM(TotalAmount) as Total, 
 CASE 									
WHEN SUM(TotalAmount) <1000 THEN "Silver"
                WHEN SUM(TotalAmount) <=1000 AND  SUM(TotalAmount) >=5000  THEN "GOLD"
                ELSE "Premium"
                END AS Category
FROM Clients cl 
	LEFT JOIN Sales sa USING(ClientID)
GROUP BY ClientID, LastName, FirstName;

SELECT ClientID, LastName, FirstName, SUM(TotalAmount) as CA,
                CASE 
	  WHEN SUM(TotalAmount) <1000 THEN "Silver"
                 WHEN SUM(TotalAmount) BETWEEN 1000 AND 5000 THEN "GOLD"
                 ELSE "Premium"										END AS Category
FROM Clients cl 
	LEFT JOIN Sales sa USING(ClientID)
GROUP BY ClientID, LastName, FirstName;
    






/* Understanding Subqueries */
/* Using Subqueries in the WHERE Clause */
/*=========================================================================
Using Subqueries in the WHERE Clause for Advanced Filters
SELECT column1, column2, ...
FROM table1
WHERE columnX [NOT] IN (SELECT columnY FROM table2 WHERE condition);
Explanation:
- The WHERE clause with subquery allows you to filter the records of the main query based on the results of the subquery.
- The [NOT] IN operator is used to include or exclude records that match the values returned by the subquery.
Tip:
- Use subqueries in WHERE for comparisons that require sets of values or complex conditions.
- Make sure subqueries are well indexed to avoid slow performance on large databases.
============================================================================*/
-- List products that were not sold in 2023
SELECT *
FROM Products
WHERE ProductID NOT IN (SELECT ProductID FROM Sales WHERE YEAR(DateSale)=2023);

SELECT ProductID
FROM Sales
WHERE YEAR(DateSale)=2023;
-- Which customers have a purchase history above average?
SELECT *
FROM Clients 
LEFT JOIN Sales USING (ClientID)
WHERE TotalAmount > (SELECT AVG(TotalAmount) FROM Sales );


-- What are the names of the products that have a unit price higher
-- than the average price of all products?
SELECT *
FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products);

-- List employees who did not make any sales during the month of December 2022
              SELECT EmployeeID, LastName, FirstName
FROM Employees
LEFT JOIN Sales USING(EmployeeID)
WHERE EmployeeID NOT IN (SELECT EmployeeID FROM Sales WHERE YEAR(DateSale)=2022 AND MONTH(DateSale)=12);


-- Employees who made sales during the month of December 2022
               SELECT EmployeeID
FROM Sales
WHERE YEAR(DateSale)=2022 AND MONTH(DateSale)=12;

-- Exercise: Write a query that lists customers who have never made a purchase.
SELECT *
FROM Clients
WHERE ClientID NOT IN (SELECT ClientID FROM Sales);




/* Using subqueries in FROM clause */
/*========================================================================
Using subqueries in FROM clause to create temporary tables
SELECT column1, column2, ...
FROM (SELECT columnA, columnB FROM table2 WHERE condition) AS sub_table
WHERE sub_table.columnA = condition;
Explanation:
- FROM clause with subquery creates a temporary view 'sub_table' that can be used like any other table in the main query.
- Subquery in FROM is often used to simplify complex queries or to perform pre-filtering.
Tip:
- Give clear aliases to subtables to improve the readability of your queries.
- Pre-filter as much as possible in the subquery to reduce the processing load in the main query.
======================================================================*/
-- Give for each employee, the name, first name and average annual sales
               SELECT EmployeeID,YEAR(DateSale) as Annee, SUM(TotalAmount) as CA
FROM Sales
GROUP BY EmployeeID,YEAR(DateSale);

SELECT EmployeeID, AVG(CA) as MeanCA
FROM 
	(SELECT EmployeeID,YEAR(DateSale) as Annee, SUM(TotalAmount) as CA
	FROM Sales
	GROUP BY EmployeeID,YEAR(DateSale)) AS temp
GROUP BY EmployeeID; 
-- What is the revenue growth rate between 2021 and 2022?
SELECT SUM(TotalAmount) AS CA2021
FROM Sales
              WHERE YEAR(DateSale)=2021;

SELECT SUM(TotalAmount) AS CA2022
FROM Sales
WHERE YEAR(DateSale)=2022;

SELECT (CA2022-CA2021)/CA2021 AS TxCroissance
FROM 
	(SELECT SUM(TotalAmount) AS CA2022
		FROM Sales
		WHERE YEAR(DateSale)=2022) AS temp, 
        
	(SELECT SUM(TotalAmount) AS CA2021
	FROM Sales
	WHERE YEAR(DateSale)=2021) AS temp2;

-- Exercise: List the 10 customers with the highest average annual number of purchases.
SELECT ClientID,Lastname,FirstName, AVG(nbPurchase) as Average
FROM 
	(SELECT ClientID,YEAR(DateSale) AS annee, COUNT(VenteID) AS nbachat
	FROM Sales
	GROUP BY ClientID,YEAR(DateSale) ) AS temp
    JOIN Clients USING(ClientID)
GROUP BY ClientID,Lastname,FirstName
ORDER BY Average DESC
LIMIT 10;





/* Using subqueries in the SELECT clause*/
/*=========================================================================
Using subqueries in the SELECT clause for calculations by row
SELECT column1, (SELECT COUNT(*) FROM table2 WHERE table2.columnY = table1.columnX) AS count_column
FROM table1;
Explanation:
- The subquery in SELECT allows to return values calculated for each row of the main table, ideal for aggregations or conditional calculations.
- These subqueries are often correlated, that is to say they refer to columns of the main query.
Tip:
- Use subqueries in SELECT for detailed calculations or conditions that vary per row.
- Ensure that queries are optimized to avoid negative performance impact, especially with correlated subqueries in large tables.
=============================================================================*/
-- Which products have a unit price higher than the average unit price of all products sold, and how many times have they been sold?

SELECT 
    P.NameProduct, 
    P.UnitPrice, 
    (SELECT COUNT(*) FROM Sales WHERE ProductID = P.ProductID) AS TotalSale
FROM 
    Products P
WHERE 
    P. UnitPrice > (SELECT AVG(UnitPrice) FROM Products)





/*Join multiple tables*/
-- List the names of employees with product details and information on customers who made theSELECT *
FROM Employees em 
	 LEFT JOIN Sales sa USING(EmployeeID)
     LEFT JOIN Products pr USING(ProductID);

-- List the supplier name, product name and
-- customer names for all products
-- that have been purchased more than 2 times
SELECT * 
FROM 
       (SELECT ProductID, COUNT(VenteID) AS Products
        FROM Sales 
        GROUP BY ProductID
        HAVING TotalProduct>2) as t
        JOIN Clients USING(ClientID)
        JOIN Products USING(ProductID)
        JOIN Sales USING(ProductID);

Error Code: 1054. Unknown column 'ClientID' in 'from clause'
-- Which products were sold by more than one employee?
- Who are the customers who bought the greatest number of different products?

/* Mastering Set Operations */
/*=========================================================================
Using Set Operations to Combine Query Results
SELECT column1, column2, ...
FROM table1
UNION [ALL] / INTERSECT / EXCEPT
SELECT column1, column2, ...
FROM table2;
Explanation:
- SELECT column1, column2, ...: specifies the columns to retrieve in the query results.
- UNION: combines the results of two queries into a single list of results without duplicates.
- UNION ALL: combines the results of two queries into a single list of results with duplicates.
- INTERSECT: returns only the rows common to both queries.
- EXCEPT: returns the rows from the first query that are not present in the second query.
=========================================================================*/
-- Give the list of employees who have more than 100 sales or whose annual turnover is greater than 2000 Dollars

-- Give the list of employees who have made more than 100 sales and whose annual turnover is greater than 2000 Dollars

-- Which employees did not make any sales in the first quarter of 2021, unlike the second quarter of 2021?

