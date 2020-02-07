-- JOINs
-- Used in selection to combine two or more sets of 
-- records horizontally given some predicate.

-- LEFT JOIN - Select all data from the base table (FROM clause)
--  alongside all related records on the JOINED table such that
--  records where the predicate is true are combined.

-- RIGHT JOIN - Select all data from the joined table 
--	alongside ALL related records on the base table (FROM clause)
--  such that records where the predicate is true are combined.

-- INNER JOIN - Select records from the two tables where the
--	predicate evaluates to true with their row data combined horizontally.

-- FULL OUTER JOIN - Select all records from both tables, combining
--	where predicate is true.

-- CROSS JOIN - Joins all records to all other records. Cartesian product.
-- Requires no predicate.
SELECT * FROM residents
	CROSS JOIN houses;

-- Alternative syntax for cross join
SELECT * FROM residents, houses;

-- Natural Join
SELECT * FROM residents NATURAL JOIN houses;

-- SELF JOIN
SELECT * FROM RESIDENTS 
	LEFT JOIN residents AS r ON residents.id = r.house_id;

-- Unequal Join
SELECT * FROM houses
	LEFT JOIN residents ON residents.id < houses.id; 

-- LEFT SIDE is residents and RIGHT SIDE is houses
SELECT * FROM residents
	FULL OUTER JOIN houses ON residents.house_id = houses.id;