                                                                                     DAY 1 DISCOVER AND MASTER THE FUNDAMENTALS OF SQL
1-	Create Database
CREATE DATABASE Store_Market:
2-	Create Table
-- Table Clients
CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    LastName VARCHAR(200),
    FirstName VARCHAR(200),
    Adress VARCHAR(200),
    Email VARCHAR(200),
    PhoneNumber VARCHAR(30)
);
-- Table Suppliers
  CREATE TABLE Suppliers (
   SupplierID INT PRIMARY KEY,
   SupplierName VARCHAR(200),
   Adress VARCHAR(100),
   Email VARCHAR(200),
   PhoneNumber VARCHAR(200) 
) ;
-- Table Employees
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    LastName VARCHAR(200),
    FirstName VARCHAR(200),
    Function VARCHAR(200),
    Email VARCHAR(200),
    PhoneNumber VARCHAR(200)) ;
 -- Table Products
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    NameProduct VARCHAR(200),
    Description TEXT,
    UnitPrice DECIMAL(10, 2),
    SupplierID INT,
   FOREIGN KEY(SupplierID)  REFERENCES Supplier (SupplierID)
);
 -- Table Sales
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    DateSale DATE,
    ClientID INT,
    ProductID INT,
    EmployeeID INT,
    FOREIGN KEY(ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY(ProductID)  REFERENCES Products(ProductID),
    FOREIGN KEY(EmployeeID) REFERENCES Employees(EmployeeID),
   QuantitySale INT,
    TotalAmount DECIMAL(10, 2));

3-	Insert data in Table
-- Insert data in "Clients" Table
INSERT INTO Clients (ClientID, LastName, FirstName, Adress, Email, PhoneNumber) VALUES
    (1, 'Doe', 'John', '123 Rue de la Demo', 'john.doe@email.com', '1234567890'),
    (2, 'Smith', 'Alice', '456 Avenue Exemple', 'alice.smith@email.com', '9876543210'),
    (3, 'Johnson', 'Bob', '789 Rue Test', 'bob.johnson@email.com', '5551234567'),
    (4, 'Garcia', 'Maria', '321 Elm Street', 'maria.garcia@email.com', '9998887777'),
    (5, 'Chen', 'Li', '555 Oak Avenue', 'li.chen@email.com', '1112223333');
-- Insert data in "Products" Table
INSERT INTO Produits (ProductID, NameProduct, Description, UnitPrice)
VALUES
    (1, 'Product A', 'Description Product A', 10.99),
    (2, 'Product B', 'Description Product B', 15.99),
    (3, 'Product C', 'Description Product C', 8.49),
    (4, 'Product D', 'Description Product D', 22.50),
    (5, 'Product E', 'Description Product E', 12.75);

-- Insert data in "Sales" Table 
INSERT INTO Sales (SaleID, DateSale, ClientID, ProductID, QuantitySale, TotalAmount)
VALUES
    (1, '2023-01-15', 1, 1, 5, 54.95),
    (2, '2023-01-16', 2, 1, 3, 32.97),
    (3, '2023-01-17', 3, 2, 2, 31.98),
    (4, '2023-01-18', 4, 3, 4, 33.96),
    (5, '2023-01-19', 5, 4, 1, 22.50);

   -- Insert data in "Suppliers" Table
  INSERT INTO Suppliers (SupplierID, SupplierName, Adress, Email, PhoneNumber)
  VALUES (10, 'Steve', 'Rue Voltaire', 'steve2021@gmail.com','07 54 34, 72'),
         (11, 'Arthur', 'Rue Lumière', 'arthur2022@gmail.com', '07 54 22 20'),
         (12, 'George', 'Rue Soleil', 'george2023@gmail.com', '07 54 25, 38'),
         (13, 'Nathalie', 'Rue Merveille', 'nathalie2024@gmail.com', '07 54 45, 18');

   -- Insert data in "Employees" Table
  INSERT INTO Employees(EmployeeID, LastName, FirstName, Function, Email,PhoneNumber)
  VALUES (101, 'Brou', 'Langui', 'broulangui3@gmail.com','Seller1','7173195057'),
         (102, 'Ngbichi', 'Dorothe', 'dothyprunelle@gmail.com', 'Seller2','7174396183');

4-	Update data in Table

UPDATE Products
SET SupplierID = '10'
WHERE Productid = 1;

UPDATE Products
SET SupplierID = '11'
WHERE ProductID = 2;

UPDATE Products
SET SupplierID = '12'
WHERE ProductID = 3;

UPDATE Products
SET SupplierID = '13'
WHERE ProductID = 4;

UPDATE Products
SET SupplierID = '11'
WHERE ProductID = 5;

UPDATE Sales
SET EmployeeID = '101'
WHERE SaleID = 1;

UPDATE Sales
SET EmployeeID = '101'
WHERE SaleID = 2;

UPDATE Sales
SET EmployeeID = '101'
WHERE SaleID = 3;

UPDATE Sales
SET EmployeeID = '102'
WHERE SaleID = 4;

UPDATE Sales
SET EmployeeID = '102'
WHERE SaleID= 5;

