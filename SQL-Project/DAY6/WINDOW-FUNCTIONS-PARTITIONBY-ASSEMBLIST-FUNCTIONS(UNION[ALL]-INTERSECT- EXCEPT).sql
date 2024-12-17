
/*==================================================================================
Window Functions
=================================================================================*/
-- Basic Syntax for Window Functions in SQL
/*
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
- PARTITION BY partition_column: Divides the data into partitions for processing by the window function.
- ORDER BY sort_column: Determines the order of the rows in each partition.
- RANGE | ROWS BETWEEN start AND end: Defines the row frame for applying the function.
=================================================================================*/
-- The sum of quantities sold per product
SELECT ProductID, SUM(QuantitySale) as TotalSale
FROM Sales
GROUP BY ProductID
ORDER BY TotalSale DESC;

--Give the ranking of products according to the quantity sold QuantitySold(sale) RANK()
SELECT ProduitID, 
	   SUM(QuantitySale) as TotalSale,
       RANK() 
       OVER(ORDER BY SUM(QuantitySale)  DESC)  AS Ranking
FROM Sales
GROUP BY ProductID;

SELECT ProduitID, 
	   SUM(QuantitySale) as TotalSale,
       DENSE_RANK() 
       OVER(ORDER BY SUM(QuantitySale) DESC)  AS Ranking
FROM Sales
GROUP BY ProductID;
--Add the ranking of employees who have achieved the highest turnover
SELECT EmployeeID, SUM(TotalAmount) as AmtTotal,
		DENSE_RANK() 
		OVER(ORDER BY SUM(TotalAmount)  DESC) As Ranking
FROM Sales
GROUP BY EmployeeID;
--Give the Top 3 best sellers in terms of turnover per year (DENSE_RANK) For ties without skipping: Sub query
--Turnover per year and per employee
SELECT EmployeeID, YEAR(DateSale) AS Year, SUM(TotalAmount) AS CA
FROM Sales
GROUP BY EmployeeID, Year
ORDER BY CA DESC;

SELECT EmployeeID, YEAR(DateSale) AS Annee, SUM(TotalAmount) AS CA, 
	   DENSE_RANK()
	  OVER (PARTITION BY YEAR(DateSale) 
      ORDER BY SUM(TotalAmount) DESC) As Ranking
FROM Sales
GROUP BY EmployeeID, Year;


SELECT temp.EmployeeID, temp. Year, temp.CA, temp. Ranking
FROM
		(SELECT EmployeeID, YEAR(DateSale) AS Annee, SUM(TotalAmount) AS CA, 
			  DENSE_RANK()
			  OVER (PARTITION BY YEAR(DateSale) 
			  ORDER BY SUM(TotalAmount) DESC) As Ranking
		FROM Sales
		GROUP BY EmployeeID, Year) AS temp    
WHERE Ranking BETWEEN 1 AND 3;

SELECT Nom, Prenom, temp.EmployeeID, temp.Year, temp.CA, temp.Ranking
FROM
		(SELECT EmployeeID, YEAR(DateSale) AS Year, SUM(TotalAmount) AS CA, 
			   DENSE_RANK()
			  OVER (PARTITION BY YEAR(DateSale) 
			  ORDER BY SUM(TotalAmount) DESC) As Ranking
		FROM Sales
		GROUP BY EmployeeID, Year) AS temp JOIN Employees USING(EmployeeID)
WHERE Ranking BETWEEN 1 AND 3;

CREATE VIEW Ranking AS
SELECT EmployeeID, YEAR(DateSale) AS Year, SUM(TotalAmount) AS CA, 
			   DENSE_RANK()
			  OVER (PARTITION BY YEAR(DateSale) 
			  ORDER BY SUM(TotalAmount) DESC) As Ranking
		FROM Sales
		GROUP BY EmployeeID, Annee;

SELECT EmployeeID, Annee, CA, Ranking
FROM Ranking
WHERE Ranking BETWEEN 1 AND 3;

--Give the top 3 best customers in terms of turnover per quarter (Quater) for each year
--Turnover per customer and per quarter
SELECT ClientID, YEAR(DateSale) AS Year, QUARTER(DateSale) as Trimestre, AVG(TotalAmount) AS CA
FROM Sales
GROUP BY ClientID, YEAR(DateSale), QUARTER(DateSale);

SELECT ClientID, 
	   YEAR(DateSale) AS Year, 
	   QUARTER(DateSale) as Trimestre, 
	   AVG(TotalAmount) AS CA,
	   RANK()
       OVER(PARTITION BY YEAR(DateSale), QUARTER(DateSale) ORDER BY AVG(TotalAmount)) AS Ranking
FROM Sales
GROUP BY ClientID, YEAR(DateSale), QUARTER(DateSale);

SELECT ClientID, Year, Trimestre, CA, Ranking
FROM 
             (SELECT ClientID, 
                  YEAR(DateSale) AS Annee, 
                  QUARTER(DateSale) as Trimestre, 
	    AVG(TotalAmount) AS CA,
	    RANK()
   OVER(PARTITION BY YEAR(DateSale), QUARTER(DateSale) ORDER BY AVG(TotalAmount)) AS Ranking
FROM Sales
    GROUP BY ClientID, YEAR(DateSale), QUARTER(DateSale)) AS temp
WHERE Ranking BETWEEN 1 AND 3; 

--Using LAG: LAG(value_expression [, offset [, default]]) OVER ([partition_by_clause] order_by_clause)
-- Give the difference in turnover between t and t-1
SELECT YEAR(DateSale) as Year, SUM(TotalAmount) as CA
FROM Sales
GROUP BY Year;

SELECT YEAR(DateSale) AS Year, 
		SUM(TotalAmount) AS CA,
        SUM(TotalAmount) - LAG(SUM(TotalAmount),1,0)
        OVER(ORDER BY YEAR(DateSale)) AS Diff
FROM Sales
GROUP BY Year;





--Determine the growth rate
SELECT YEAR(DateSale) AS Year, 
		SUM(TotalAmount) AS CA,
        (SUM(TotalAmount) - LAG(SUM(TotalAmount),1,0)
        OVER(ORDER BY YEAR(DateSale)) ) 
        / 
        LAG(SUM(TotalAmount),1, 0) 
        OVER(ORDER BY YEAR(DateSale)) AS Txcroissance
FROM Sales
GROUP BY Year;

--Add the total amount for year n-1
SELECT YEAR(DateSale) as Year, 
		SUM(TotalAmount) AS CA,
		LAG(SUM(TotalAmount),1,0) 
        OVER(ORDER BY YEAR(DateSale)) as CAPrevious
FROM Sales
GROUP BY Year;

SELECT YEAR(DateSale) AS Year, 
	   MAX(TotalAmount)
       OVER(PARTITION BY YEAR(DateSale) ORDER BY SUM(TotalAmount) ) AS Maximum
FROM Sales;






--What is the total amount of Sales per quarter for each year
-- and how does Sales evolve from one quarter to another
               SELECT YEAR(DateSale) AS Year, 
	   QUARTER(DateSale) AS Trimestre, 
	   SUM(TotalAmount) AS CA
FROM Sales
GROUP BY YEAR(DateSale), QUARTER(DateSale);

SELECT YEAR(DateSale) AS Year, 
	   QUARTER(DateSale) AS Trimestre, 
	   SUM(TotalAmount) AS CA,
       SUM(TotalAmount) - LAG(SUM(TotalAmount), 1, 0)
       OVER(ORDER BY YEAR(DateSale), QUARTER(DateSale)) as Evolution
FROM Sales
GROUP BY YEAR(DateSale), QUARTER(DateSale);














/*=======================================================================================
Set functions
==========================================================================================*/
-- UNION: Combines the results of two queries, eliminating duplicates.
/*
SELECT column FROM table1
UNION
SELECT column FROM table2;

Explanation:
- The UNION operator is used to combine the results of two separate queries.
- It eliminates duplicate rows to return only distinct rows.
- Both queries must have the same number of columns in the result, with compatible data types.
*/

-- What is the combined list of all employee and customer names?

-- UNION ALL: Combines the results of two queries while keeping duplicates.
/*
SELECT column FROM table1
UNION ALL
SELECT column FROM table2;

Explanation:
- The UNION ALL operator combines the results of two queries without eliminating duplicates.
- This can be useful if you want to keep all rows, including repeats.
- As with UNION, the combined queries must have results with the same number and type of columns.
*/

-- What are all employee and customer names, including repeats?

-- INTERSECT: Returns the rows common to two queries.
/*
SELECT column FROM table1
INTERSECT
SELECT column FROM table2;

Explanation:
- The INTERSECT operator finds the rows that are common to both queries.
- It is less frequently supported than UNION and UNION ALL in some database management systems.
- The two queries must have compatible result structures.
*/

-- Which employees have made more than 1000 Dollars in turnover and who have made more than 10 Sales

-- EXCEPT or MINUS: Returns the rows of the first query that are not present in the second.
/*
SELECT column FROM table1
EXCEPT
SELECT column FROM table2;



Explanation:
- The EXCEPT operator (or MINUS, depending on the database management system) subtracts the results of the second query from the first.
- The result contains only the unique rows from the first query that are not found in the second.
- Both queries must return the same number of columns with compatible data types.
*/
-- Which employees have never made a sale?
-- Which employees have not managed VIP customers? (customers buy more than 5000 dollars)

