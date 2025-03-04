CREATE DATABASE EMP;
GO
USE EMP;
GO
CREATE TABLE EMPLOYEES (
	EmployeeId INT PRIMARY KEY,
	EmployeeName VARCHAR(50),
	Salary DECIMAL(10,2)
);
GO
INSERT INTO EMPLOYEES VALUES
(1, 'Farzeen', 60000),
(2, 'Ali', 70000),
(3, 'Huzaifa', 50000),
(4, 'Fahad', 80000);
GO
CREATE FUNCTION 
CalculateBonus(@Salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
AS
BEGIN 
	RETURN (@Salary * 0.10)
END;
GO
SELECT EmployeeName, Salary, 
dbo.CalculateBonus(Salary) 
AS Bonus FROM EMPLOYEES;







