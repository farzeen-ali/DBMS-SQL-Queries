CREATE DATABASE JOINSS;
USE JOINSS;

CREATE TABLE students (
	student_id INT PRIMARY KEY,
	student_name VARCHAR(50),
	course_id INT
);
CREATE TABLE courses (
	course_id INT PRIMARY KEY,
	course_name VARCHAR(50)
);

INSERT INTO students VALUES (1, 'Ali', 101), (2, 'Ahmed', 102);
INSERT INTO courses VALUES (101, 'PF'), (102, 'DBMS');
INSERT INTO courses VALUES (103, 'OS');

SELECT * FROM courses;

/* INNER JOIN */
SELECT students.student_name, courses.course_name
FROM students INNER JOIN courses 
ON students.course_id = courses.course_id

/* LEFT JOIN */
SELECT students.student_name, courses.course_name 
FROM students LEFT JOIN courses 
ON students.course_id = courses.course_id
UNION
/* RIGHT JOIN */
SELECT students.student_name, courses.course_name 
FROM students RIGHT JOIN courses 
ON students.course_id = courses.course_id

CREATE TABLE employees (
	emp_id INT PRIMARY KEY
);

ALTER TABLE employees ADD emp_name VARCHAR(50);

SELECT * FROM employees;









