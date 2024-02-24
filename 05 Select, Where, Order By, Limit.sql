
CREATE DATABASE college;

USE college;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student 
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

-- select

SELECT * FROM student;   -- returns all the columns
SELECT name FROM student;  -- returns name column
SELECT city FROM student;  -- returns all the cities in the table
SELECT DISTINCT city FROM student;  -- DISTINCT - returns distict cities, that means doesn't show dupicates
SELECT name, marks FROM student; -- return mutiple columns in the table

-- where

SELECT * FROM student
WHERE marks>80;         -- returns the students whose marks>80
SELECT name FROM student
WHERE city="Delhi";     -- returns the names of the student who are from Delhi

-- and, or operators

SELECT name FROM student
WHERE city="Mumbai" AND marks>90;  -- returns the names of the student whose are from Mumbai and their marks>90
SELECT * FROM student
WHERE city="Delhi" OR marks>90; -- returns the students who are from Delhi or whose marks > 90

-- between (used to select range of values including the edge values)

SELECT * FROM student
WHERE marks BETWEEN 80 AND 90;  -- returns the students whose marks are between 80 and 90 including 80 and 90

-- IN (used to peovide a list of values for selecting the rows)

SELECT * FROM student
WHERE city IN ("Pune", "Mumbai");   -- returns the students who are from Pune and Mumbai

-- NOT ( it negates the condition)

SELECT * FROM student
WHERE city NOT IN ("Pune", "Mumbai");  -- returns the students who are not from Pune and Mumbai

-- LIMIT (limits the no.of tuples/rows to be returned

SELECT * FROM student LIMIT 3;  -- there are 5 students but retuns only 3 students
SELECT * FROM student   
WHERE marks>80 
LIMIT 2;        --  there are 4 students whose marks>80 but only 2 students are returned

-- order by (used for sorting on the basis of the column provided)
-- asc keyword is used for ascecnding ordering
-- desc keyword is used for descending ordering
-- default is ascecnding order

SELECT * FROM student 
ORDER BY marks;   -- returns sorted table in ascecnding order based on marks
SELECT * FROM student
ORDER BY marks DESC; -- returns sorted table in descending order based on marks

-- return the top 3 student names
SELECT name FROM student
ORDER BY marks DESC
LIMIT 3;



SHOW DATABASES;