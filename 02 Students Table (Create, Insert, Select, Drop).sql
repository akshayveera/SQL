
-- creating a table or defining the schema of the table
CREATE TABLE students(
	regno INT PRIMARY KEY,
    name VARCHAR(50)
);

-- DROP TABLE students;

-- to fetch all the records of the students table
SELECT * FROM students;

-- insert multiple values into table
INSERT INTO students
(regno, name)
VALUES
(101, "Ramesh"),
(102, "Suresh"),
(103, "Mukesh");

-- insert single entry
INSERT INTO students VALUES (104, "Mahesh");

-- insert in specified order
INSERT INTO students (name, regno) VALUES ("Somesh", 105);



