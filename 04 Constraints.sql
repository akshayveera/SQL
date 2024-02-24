
-- constraints
-- rules or condition that defined on table

-- not null
-- no column value can be null
CREATE TABLE temp1(
	id INT NOT NULL
);
INSERT INTO temp1 VALUES (101);
INSERT INTO temp1 VALUES (NULL);

DROP TABLE temp1;

-- unique
-- every column value should be unique

CREATE TABLE temp1(
	id INT UNIQUE
);

INSERT INTO temp1 VALUES (101);
INSERT INTO temp1 VALUES (101);

DROP TABLE temp1;

-- primary key
-- uniquely identifies each entry/row/record
-- not null and unique
-- only one primary should be there in a table

CREATE TABLE temp1(
	id INT,
    name VARCHAR(50),
    PRIMARY KEY(id)
);

INSERT INTO temp1 VALUES (101, "name 1");
INSERT INTO temp1 VALUES (102, "name 2");

DROP TABLE temp1;

-- two columns combinely form a primary key

CREATE TABLE temp1(
	id INT,
    name VARCHAR(50),
    PRIMARY KEY(id, name)
);

INSERT INTO temp1 VALUES (101, "name 1");
INSERT INTO temp1 VALUES (101, "name 2");

DROP TABLE IF EXISTS temp1;

SELECT * FROM temp1;

-- default 
-- used to specify some default value to a field 

CREATE TABLE temp1(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT DEFAULT 50
);

INSERT INTO temp1 (id, name) VALUES (101, "Ramesh"),(102, "Suresh");

SELECT * FROM temp1;

-- foreign key
-- it is a primay key of some other table
-- it is used for linking two tables
-- there can be mutiple foreign keys

CREATE TABLE temp2(
	id INT PRIMARY KEY,
    foreignid INT,
    FOREIGN KEY (foreignid) REFERENCES temp1(id)
);

INSERT INTO temp2 VALUES (1, 101);
-- below line throws error as there is no id 201 in temp1
INSERT INTO temp2 VALUES (2, 201);
INSERT INTO temp2 VALUES (2, 102);

SELECT * FROM temp2;

DROP TABLE temp2;

-- check constraint 
-- checks the constraint and allows to insert only those values

CREATE TABLE temp2(
	age INT CHECK (age>=18)
);

INSERT INTO temp2 VALUES (21);
INSERT INTO temp2 VALUES (12);

SELECT * FROM temp2;


DROP TABLE temp2;

-- other syntax

CREATE TABLE temp2(
	age INT,
    CONSTRAINT age_check CHECK (age>=18)
);

INSERT INTO temp2 VALUES (21);
INSERT INTO temp2 VALUES (15);

SELECT * FROM temp2;









