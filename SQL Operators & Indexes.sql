CREATE DATABASE Sales;
USE Sales;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
    Age INT,
    Email VARCHAR(100)
);

INSERT INTO Customers (CustomerID, Name, City, Age, Email) VALUES
(1, 'Ali', 'Lahore', 28, 'ali@example.com'),
(2, 'Sara', 'Karachi', 35, 'sara@example.com'),
(3, 'Ahmed', 'Islamabad', 22, 'ahmed@example.com'),
(4, 'Zara', 'Lahore', 29, 'zara@example.com'),
(5, 'Usman', 'Karachi', 42, 'usman@example.com');

INSERT INTO Customers (CustomerID, Name, City, Age, Email) VALUES (6, 'Farzeen', 'KPK', 42, 'usman@example.com');
SELECT * FROM Customers;

CREATE INDEX idx_city ON Customers (City);

SELECT * FROM Customers WHERE City = 'Karachi';

/* DROP INDEX idx_city ON Customers; */

/* Logical Operators */

SELECT * FROM Customers WHERE City = 'Karachi' AND Age > 30;
SELECT * FROM Customers WHERE City = 'Karachi' OR Age < 30;
SELECT * FROM Customers WHERE NOT City = 'Karachi';

/* Between Operator */
SELECT * FROM Customers WHERE Age BETWEEN 25 AND 35;

/* NULL */
SELECT * FROM Customers WHERE Email IS NULL;
SELECT * FROM Customers WHERE Email IS NOT NULL;

/* SubQueries */
SELECT AVG(Age) FROM Customers;
SELECT * FROM Customers WHERE Age > (SELECT AVG(Age) FROM Customers);

SELECT City, AVG(Age) AS AvgAge FROM (SELECT * FROM Customers) AS AllCustomers GROUP BY City;


