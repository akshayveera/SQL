
-- left exculsive join
-- returns only records of left table that are not present in right table

-- if we assume both tables as sets A,B
-- left exculsive join return A-(A intersection B)

-- there is no direct method for this, but we do it in following way

SELECT * 
FROM student as s 
LEFT JOIN course as c
ON s.stu_id = c.stu_id
WHERE c.stu_id IS NULL;    --  "=" doesn't work when checking the condition of null so we use "is" keyword

-- right exclusive join
-- returns only records of right table that are not present in left table

-- if we assume both tables as sets A,B
-- right exclusive join return B-(A intersection B)

-- there is no direct method for this, but we do it in following way

SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.stu_id = c.stu_id
WHERE s.stu_id IS NULL;

-- full exclusive join
-- returns the elements that are not common in both tables that means 
-- it is union of left exclusive join and right exclusive join
 
-- if we assume both tables as sets A,B
-- full exclusive join is like A-(A intersection B) union B-(A intersection B)

SELECT * 
FROM student as a
LEFT JOIN course as b
ON a.stu_id = b.stu_id
WHERE b.stu_id IS NULL
UNION
SELECT *
FROM student as a
RIGHT JOIN course as b
ON a.stu_id = b.stu_id
WHERE a.stu_id IS NULL;

-- self join
-- used to combine a table with itself
-- the keyword used is JOIN

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO employee
VALUES
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", NULL),
(104, "donald", 103);

SELECT * FROM employee;

SELECT b.name as manager_name, a.name 
FROM employee as a 
JOIN employee as b
ON a.id = b.manager_id;


