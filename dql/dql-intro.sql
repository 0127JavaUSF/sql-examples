-- DQL - DATA Query LANGUAGE
-- 1. SELECT - Retrieve records FROM a TABLE OR TABLES

-- SELECT col, ... [or *] FROM table_name (WHERE predicate)

SELECT name, 'hello ' || name AS hello, email FROM residents
--	WHERE name LIKE '__n_y%'
	ORDER BY NAME DESC
	LIMIT 1 OFFSET 2
	
-- LIKE - allows us TO compare strings
-- IN a LIKE comparison, the % sign means n-length wildcard
-- We can use _ FOR single CHARACTER wildcards

-- LIMIT n - Truncates RESULT AFTER n records
-- OFFSET n - Offsets starting records BY n records
	
-- ORDER BY - Orders RESULT DATA BY SOME COLUMN OR COLUMNS.
--		You can use DESC TO DECLARE descending ORDER. DEFAULT IS 
--		Ascending.
	
SELECT * FROM residents WHERE UPPER(name) LIKE upper('emily');




-- WHERE IN (value, ....) 
-- BETWEEN X AND Y 
-- AND/or