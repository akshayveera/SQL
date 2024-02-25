
-- SQL sub queries
-- A sub query or inner query ir nested query is a query with in another sql query

-- it involves two select statements

DROP TABLE student;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student 
VALUES
(101, "anil", 36, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 40, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

SELECT * FROM student;

-- waq to return all the student names and their marks whose marks are greater than avg marks of the class

-- here we need to perform two things

-- 1) calculate the avg marks
SELECT AVG(marks) FROM student;

-- 2) return the student's names and marks whose marks are greater than avg marks
SELECT name, marks 
FROM student
WHERE marks > 59.83;

-- now we can combine those two queries like
SELECT name, marks 
FROM student
WHERE marks > (SELECT AVG(marks) FROM student);



-- find the names of all students with even roll numbers



SELECT rollno, name 
FROM student
WHERE rollno%2=0;

-- or

-- 1) find even rollnos
-- 2) find names of students with even rollnos

SELECT rollno, name
FROM student 
WHERE rollno IN (
	SELECT rollno 
    FROM student
    WHERE rollno%2=0
);

-- find max marks from the students of delhi

-- 1) find the students od delhi
-- 2) find their max marks using the sub list in step 1

SELECT MAX(marks)
FROM (SELECT * FROM student WHERE city = "Delhi") as temp;

-- or

SELECT MAX(marks)
FROM student
WHERE city = "Delhi";

