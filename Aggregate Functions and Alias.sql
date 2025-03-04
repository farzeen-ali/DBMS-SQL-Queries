CREATE DATABASE DB;

USE DB;

CREATE TABLE EMPLOYEES (
	EmployeeId INT PRIMARY Key,
	EmployeeName VARCHAR(50),
	Department VARCHAR(100),
	Salary DECIMAL(10,2)
);

SELECT *  FROM EMPLOYEES;

INSERT INTO EMPLOYEES VALUES
(1, 'Farzeen', 'CS', 60000),
(2, 'Ali', 'IT', 70000),
(3, 'Huzaifa', 'BBA', 50000),
(4, 'Fahad', 'AF', 80000);

SELECT SUM(Salary) AS [Total Salary] 
FROM EMPLOYEES;

SELECT AVG(Salary) AS [Average Salary] 
FROM EMPLOYEES;

SELECT COUNT(*) AS [Total Rows] 
FROM EMPLOYEES;

SELECT MIN(Salary) AS [Minimum Salary] 
FROM EMPLOYEES;

SELECT MAX(Salary) AS [Maximun Salary] 
FROM EMPLOYEES;

SELECT e.EmployeeName  FROM EMPLOYEES as e;
