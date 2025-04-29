CREATE DATABASE UniversityDB;
USE UniversityDB;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(50)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Credits INT
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Grade CHAR(2),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Students (StudentID, Name, Age, Department) VALUES
(1, 'Ali', 21, 'Computer Science'),
(2, 'Sara', 22, 'Business'),
(3, 'Ahmed', 20, 'Engineering'),
(4, 'Hina', 23, 'Computer Science');

INSERT INTO Courses (CourseID, CourseName, Credits) VALUES
(101, 'Database Systems', 3),
(102, 'Marketing', 2),
(103, 'Thermodynamics', 4);

INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, Grade) VALUES
(1, 1, 101, 'A'),
(2, 2, 102, 'B'),
(3, 3, 103, 'C'),
(4, 4, 101, 'A'),
(5, 1, 103, 'B');

/* SubQueries */
/* SELECT Name FROM Students WHERE 
StudentID IN (
	SELECT StudentID FROM Enrollments WHERE Grade = 'A'
); */

