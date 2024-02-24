
--  Aggregate Functions
-- aggregate functions perform a calculation on set of values, and returns a single values

-- count() - counts the no.of tuples/rows
-- sum() - returns the sum of values
-- min() - returns the min of values
-- max() - returns the max of values
-- avg() - returns the avg of values

SELECT marks FROM student;
SELECT COUNT(name) FROM student;
SELECT MIN(marks) FROM student;
SELECT MAX(marks) FROM student;
SELECT SUM(marks) FROM student;
SELECT AVG(marks) FROM student;

-- group by 
-- groups rows that have the same values into summary rows
-- it collects data from multiple records and groups the result by one or more columns

-- generally we use group by with some aggregate functions

-- this returns the no.of students in each city
SELECT city, COUNT(name) FROM student 
GROUP BY city;

-- this returns the avg marks of students from each city
SELECT city, AVG(marks) FROM student 
GROUP BY city;

-- grouped by two fields
SELECT city, name, COUNT(city) FROM student
GROUP BY city, name;

-- waq to find avg marks in each city in ascending order
SELECT city, AVG(marks) FROM student
GROUP BY city
ORDER BY AVG(marks);

-- waq to find the no.of students of each grade
SELECT grade, COUNT(name)
FROM student
GROUP BY grade
ORDER BY grade;

-- having clause 
-- Similar to where clause, used to apply some conditions on rows
-- But the difference between where and having is where is used on rows and having is used on groups
-- Having is used when we want to apply some conditions on groups

-- waq to count the number of students in each city where max marks cross 90
SELECT city, COUNT(name)
FROM student
GROUP BY city
HAVING MAX(marks)>90;


-- general order of a query

/*

SELECT column(s)
FROM table_name
WHERE condition
GROUP BY column(s)
HAVING condition
ORDER BY column(s)

*/




