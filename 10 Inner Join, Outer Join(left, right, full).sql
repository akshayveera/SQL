

-- Join
-- join is used to combine rows from two or more tables, based on related column between them

-- types of joins
-- inner join
-- outer join
--      left join
--      right join
--      full join

CREATE TABLE student(
	stu_id INT,
    name VARCHAR(50)
);

INSERT INTO student VALUES
(101, "adam"),
(102, "bob"),
(103, "casey");

SELECT * FROM student;

CREATE TABLE course(
	stu_id INT,
    course_name VARCHAR(50)
);

INSERT INTO course VALUES
(102, "english"),
(105, "maths"),
(103, "science"),
(107, "computer science");

SELECT * FROM course;


-- inner join
-- return records that have matching values in both tables

SELECT *
FROM student
INNER JOIN course
ON student.stu_id = course.stu_id;

SELECT *
FROM course
INNER JOIN student
ON student.stu_id = course.stu_id;

-- we can also use alias for refering that table in joins by using "as" keyword
-- alias means alternate name 

SELECT *
FROM student as a
INNER JOIN course as b
ON a.stu_id = b.stu_id;

-- left join
-- returns all the records from left table and matched records from right table

SELECT * 
FROM student
LEFT JOIN course
ON student.stu_id = course.stu_id;

-- right join
-- returns all the records from right table and matched recored from left table

SELECT * 
FROM student
RIGHT JOIN course
ON student.stu_id = course.stu_id;

-- full join
-- returns all records when there is a match in either left or right table

-- in mysql full join doesn't exist
-- so we need to perform union of left join and right join to achieve full join
-- left join union right join

SELECT *
FROM student as s
LEFT JOIN course as c
ON s.stu_id = c.stu_id
UNION
SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.stu_id = c.stu_id;






 


