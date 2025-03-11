CREATE DATABASE ME
Use ME;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50),
    Grade INT
);

INSERT INTO Students VALUES 
(1, 'Ali Khan', 'Computer Science', 85),
(2, 'Sara Ahmed', 'Business', 78),
(3, 'Usman Tariq', 'Computer Science', 90),
(4, 'Ayesha Akram', 'Engineering', 88),
(5, 'Bilal Zafar', 'Business', 76),
(6, 'Fatima Noor', 'Computer Science', 95),
(7, 'Hamza Rauf', 'Engineering', 80),
(8, 'Zara Malik', 'Business', 85),
(9, 'Ahmed Raza', 'Computer Science', 75),
(10, 'Muneeb Ahsan', 'Engineering', 92);

SELECT Department, COUNT(*) 
As Total_Students From Students
GROUP BY Department;

SELECT Department, AVG(Grade) As Average_Grade
From Students
Group By Department;

SELECT Department, AVG(Grade) As Average_Grade
From Students
Group By Department
HAVING AVG(Grade) > 80;










/* Order By */
/* SELECT * FROM Students ORDER BY Grade ASC;

SELECT * FROM Students ORDER BY Grade DESC;

SELECT * FROM Students ORDER BY Name ASC;

SELECT * FROM Students ORDER BY Department DESC, Name ASC; */
