5- Read information in the database
/*======================================================*/
/*                 Mastering the SELECT clause */
/*======================================================*/
/*======================================================*/
/* Feature 1: Select all information from a table
General syntax:
SELECT *
FROM Table_Name;
*/
/*======================================================*/

-- QUESTION: Give the complete table of products sold by the company.
	SELECT *
	FROM Products;

-- QUESTION: Give the complete table of the company's customers
	SELECT *
	FROM Clients;
/*======================================================*/
/* Feature 2: Select a single column
General syntax:
SELECT column_name
FROM Table_Name;
*/
/*======================================================*/


-- QUESTION: Give the name of all the products in the database
	SELECT NameProduct
	FROM 
              Products;

-- QUESTION: Give the name of all the suppliers in the database
	SELECT SupplierName
	FROM 
              Suppliers;

/*======================================================*/
/* Feature 3: Select two or more columns
General syntax:
SELECT column_name1, column_name2,..., column_name3
FROM table_name;
======================================================*/

-- QUESTION: Give the first and last names of the company's employees.
	SELECT Lastname, FirstName
	FROM 
               Employees;

-- QUESTION: Give the name, price and description of all products
	SELECT NameProduct, UnitPrice
	FROM 
              Products;



/*======================================================*/
/* Feature 4: Select distinct values
General syntax:
SELECT DISTINCT column_name
FROM table_name;
======================================================*/

-- QUESTION: Give the different dates on which sales were made.
	SELECT DISTINCT(SaleDate)
	FROM Sales;

-- QUESTION: Give the distinct first and last names of the company's employees.
	SELECT DISTINCT LastName,FirstName
	FROM 
              Employees;
/*==========================================================================================*/
/*                 Master the WHERE clause to FILTER based on conditions  */
/*==========================================================================================*/
/*======================================================*/
/* Feature 6: Filter by condition
General syntax:
SELECT column_name
FROM table_name
WHERE condition;
======================================================*/


-- QUESTION: List of products sold
        SELECT *
        FROM
        Products; 

-- QUESTION: List of products sold is > 200
         SELECT *
         FROM Products
         WHERE UnitPrice>200;

-- QUESTION: List of products sold is <= 200
	SELECT *
	FROM Produits
	WHERE UnitPrice <=200;

-- QUESTION: List of products sold between 15 and 50
	SELECT *
	FROM Products
	WHERE UnitPrice BETWEEN 15 AND 50;

	SELECT *
	FROM Products
	WHERE UnitPrice >=15 AND UnitPrice <=50;

-- QUESTION: Information sur le produit "Nike Air Max" 
-- QUESTION: List the products of supplier number 13
	SELECT *
	FROM Products
	WHERE SupplierID=13;


/*======================================================*/
/* Feature 7: Using multiple conditions with AND and OR
General syntax:
SELECT column_name
FROM table_name
WHERE condition1 AND/OR condition2;
======================================================*/
-- QUESTION: List of products sold by supplier 13 or by supplier 11       
       SELECT *
       FROM Products
       WHERE SupplierID=13 OR SupplierID =11;
/*======================================================*/
/* Feature 8: Using IN in WHERE clause
General syntax:
SELECT column_name
FROM table_name
WHERE column_name IN (value1, value2, ...);
======================================================*/

          SELECT *
          FROM Products
          WHERE SupplierID IN (11,13); 

/*======================================================*/





/* Feature 9: Using BETWEEN in WHERE clause
General syntax:
SELECT column_name
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
======================================================*/

-- QUESTION:  Select sales made between January 1, 2021 and December 31, 2023
       SELECT *
       FROM Sales
       WHERE DateSale BETWEEN '2021-01-01' AND '2023-12-31'; 

/*======================================================*/
/* Feature 10: Using LIKE in WHERE clause
General syntax:
SELECT column_name
FROM table_name
WHERE column_name LIKE 'pattern';
======================================================*/
-- QUESTION: Select Clients names that start with the letter c
        SELECT *
        FROM Clients
        WHERE LastName LIKE 'c%'; 
-- QUESTION: Select Client names that start with the letter c and end with n
        SELECT *
        FROM Clients
       WHERE LastName LIKE 'c%n';  


-- QUESTION: The name contains the letter n
          SELECT *
          FROM Clients
         WHERE LastName LIKE '%n%'; 
-- QUESTION: The name contains “on”
         SELECT *
         FROM Clients
         WHERE LastName LIKE '%on%'; 

-- QUESTION:  List products that start with 'a'

-- QUESTION:   List products starting with 'N' and ending with 'x'
/*==========================================================================================
Mastering the ORDER BY clause TO RANK
General syntax:
SELECT column_name
FROM table_name
WHERE condition
ORDER BY column_name [ASC | DESC], other_column_name [ASC | DESC], ...;
==========================================================================================*/

--QUESTION: List the products from lowest price to Highest price.
	SELECT NameProduct,UnitPrice
	FROM Products
	ORDER BY UnitPrice ASC; 

--QUESTION: List the products from highest price to lowest price.
	SELECT NameProduct,UnitPrice
	FROM Products
	ORDER BY UnitPrice DESC; 

--QUESTION: List of employees alphabetical order by name and descending first name
	SELECT LastName,FirstName
	FROM Employees
	ORDER BY LastName DESC, FirstName ASC; 

--QUESTION: List of products with a price greater than 15, result alphabetically according to the name of the product
	SELECT NameProduct,UnitPrice
	FROM Products
	WHERE UnitPrice >15
	ORDER BY NameProduct ASC; 

--QUESTION: List of customers whose name contains the letter A only once
	SELECT *
	FROM Clients
	WHERE LastName LIKE '%a%' AND LastName NOT LIKE '%a%a%';
	
--QUESTION: Contains two occurrences of the letter A
	SELECT *
	FROM Clients
	WHERE LastName LIKE '%a%a%';

