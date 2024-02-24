
-- foreign key
-- foreign key is the primary key of some other table

CREATE TABLE dept(
	id INT PRIMARY KEY,
    name VARCHAR(20)
);

INSERT INTO dept VALUES
(101, "CSE"),
(102, "EEE");

UPDATE dept
SET id = 201
WHERE name = "CSE";

UPDATE dept
SET id = 202
WHERE name = "EEE";

SELECT * FROM dept;

CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    salary int,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO teacher 
VALUES 
(01, "name1", 101, 25000),
(02, "name2", 102, 30000);

SELECT * FROM teacher;

-- cascading for foreign key

-- on delete cascade
-- when we create a foreign key using ON DELETE CASCADE, 
-- it deletes the referencing rows in the child table 
-- when the referenced row is deleted in the parent table which has the primary key

-- on update cascade
-- when we create a foreign key using ON UPDATE CASCADE,
-- the referencing row in the child table is updated 
-- when the referenced row is updated in the parent table which has the primary key


