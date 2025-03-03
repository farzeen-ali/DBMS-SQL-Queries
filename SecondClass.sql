CREATE DATABASE EMPLOYEE;

USE EMPLOYEE;

CREATE TABLE EMPLOYEES (
	EmployeeID INT PRIMARY KEY,
	EmployeeName VARCHAR(50),
	EmployeeAge INT,
	Department VARCHAR(60),
	Salary DECIMAL(10,2),
	JoinDate DATE
);

SELECT * FROM EMPLOYEES;

INSERT INTO 
EMPLOYEES
(EmployeeID, EmployeeName,
EmployeeAge, Department, Salary, JoinDate) 
VALUES 
(2, 'Mehran', 22, 'IT', 70000.00, '2020-07-06'),
(3, 'Moiz', 21, 'HR', 60000.00, '2022-01-21'),
(4, 'Noorain', 23, 'CS', 50000.00, '2025-11-08'),
(5, 'Aun Abbas', 14, 'BBA', 90000.00, '2018-06-09'),
(6, 'Bilal Ashraf', 28, 'SE', 30000.00, '2021-12-17'),
(7, 'Ali', 74, 'IT', 60000.00, '2012-03-09');

SELECT EmployeeID, EmployeeName, Salary 
FROM EMPLOYEES WHERE Department = 'PH';

SELECT EmployeeID, EmployeeName, Department FROM EMPLOYEES
WHERE EmployeeName LIKE '%n%';

SELECT EmployeeName,Salary FROM EMPLOYEES WHERE Salary > 50000;

SELECT EmployeeName, JoinDate FROM EMPLOYEES 
WHERE JoinDate > '2020-01-01';


UPDATE EMPLOYEES
SET Department = 'Computer Science' WHERE Department = 'CS';

UPDATE EMPLOYEES
SET EmployeeName = 'Muhammad Ali'
WHERE EmployeeID = 1;


DELETE FROM EMPLOYEES WHERE EmployeeID = 2;

DELETE FROM EMPLOYEES WHERE Salary < 50000;


SELECT * FROM EMPLOYEES;






