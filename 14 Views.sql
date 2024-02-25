
-- mysql views
-- a view is a  virtual table based on the result set of an sql statement

-- a view always shows up-to-date data. The database engine recreates the view, every time a user queries it.

CREATE VIEW view1 as
SELECT rollno, name FROM student;

SELECT * FROM view1;

DROP VIEW view1;


