
-- table related queries

-- update and set
-- used to update the existing values of the table

/*
UPDATE table_name
SET col1 = val1, col2 = val2
WHERE condition
*/

-- by default database is in safe update mode, that means it doesn't allow to update the data so we need to move outof safe update mode
-- write this command to come out of safe update mode
SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade = "O"
WHERE grade = "A";

SELECT * FROM student;

UPDATE student
SET marks = 82, grade = "B"
where rollno = 105;

-- waq to increase the marks of each student by 1
UPDATE student
SET marks = marks + 1;

SELECT * FROM student;

-- delete
-- used to delete existing rows from column

DELETE FROM student
WHERE marks<80;

SELECT * FROM student;

-- this deletes all the rows
DELETE FROM student;

-- truncate
-- this also deletes all the rows of the table
TRUNCATE TABLE student;

SELECT * FROM student;
