
-- union
-- it is used to combine result-set of two or more select statements. gives unique records.

-- to use it
--    every select should have same no.of columns
--    columns must have similar data types
--    columns in every select should be in same order

SELECT * FROM employee;

SELECT id, name FROM employee
UNION
SELECT id, name FROM employee;

-- union all
-- performs union and gives duplicates values also

SELECT id, name FROM employee
UNION ALL
SELECT id, name FROM employee;

SELECT id, name FROM employee
UNION ALL
SELECT id, name FROM employee
UNION ALL
SELECT id, name FROM employee;

