

-- table related queries

-- alter - used to change the schema of the table

-- add column

ALTER TABLE teacher
ADD COLUMN temp INT NOT NULL;

-- drop column

ALTER TABLE teacher
DROP COLUMN temp;

-- rename table

ALTER TABLE teacher
RENAME TO teachertable;

SELECT * FROM teachertable;

ALTER TABLE teachertable
RENAME TO teacher;

SELECT * FROM teacher;


-- change column name

ALTER TABLE teacher
CHANGE name tname VARCHAR(50);

ALTER TABLE teacher
CHANGE tname name VARCHAR(50);

SELECT * FROM teacher;

-- modify column (change column datatype/constraint)

ALTER TABLE teacher
MODIFY name VARCHAR(100) NOT NULL;

SELECT * FROM teacher;









