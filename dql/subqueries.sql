-- Subquery IS a query WITHIN a query
-- Subqueries can be useful WHEN the RESULT OF ONE query needs TO be
-- used IN another query

-- THREE MAJOR TYPES OF SUBQUERIES:
-- 1. Nested Subquery (WHERE clause)
-- 2. INLINE-VIEW (FROM clause)
-- 3. SELECT SUBQUERY (SELECT clause)

-- Nested Subquery
-- Imagine we want TO know the building that our friend Emily lives IN
-- We don't know Emily's id, AND we don't know the building id.
-- We DO that our friend's name IS Emily. How can we GET that DATA?
SELECT * FROM houses WHERE id in
(SELECT house_id FROM residents WHERE upper(name) LIKE 'C%');


-- Inline view
-- There is a database object called a View. A view represents a stored
-- query. Us querying the result of query.

SELECT * FROM (
	SELECT * FROM residents WHERE id BETWEEN 100 AND 200
) AS inner_table WHERE NAME LIKE 'D%';


--CREATE VIEW my_view AS SELECT * FROM residents WHERE id BETWEEN 100 AND 200;
SELECT * FROM my_view;

-- Select subquery applies a subquery in the SELECT clause of the outer
-- query.  Useful for combining aggregate data with non-aggregate data.
SELECT *, (SELECT 1) FROM residents;

