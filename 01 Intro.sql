
CREATE DATABASE college;
-- CREATE DATABASE IF NOT EXISTS college;

-- DROP DATABASE company;
-- DROP DATABASE IF EXISTS company;

USE college;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(30),
    age INT NOT NULL
);

INSERT INTO student VALUES (1, "Akshay ", 22);
INSERT INTO student VALUES(2, "SD", 22);

SELECT * FROM student;

-- shows all the databases
SHOW DATABASES;

-- this shows all the tables in the database which we are using
SHOW TABLES;




