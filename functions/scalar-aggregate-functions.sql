-- Scalar FUNCTIONS 
-- IN SQL, Scalar FUNCTIONS ARE standard FUNCTIONS that operate ON
-- parameters and RETURN a value.

-- FOR instance, USING upper(str) TO make the string uppercase
-- IS an example OF a scalar FUNCTION.  SIMILAR ones might be
-- lower(str) TO CONVERT TO lowercase, char_length(str) TO GET
-- a strings length, substring(str, from x for y) FOR computing
-- substrings.

-- abs(n) calculate the ABSOLUTE value, ceil(), floor(), round(),
-- trunc TO TRUNCATE TO towards zero, sqrt, power(x, y)

SELECT id, upper(build_name) AS build_name, apartment_number, 
	power(id, 2) FROM houses
	WHERE power(id, 2) > 10;
	

-- AGGREGATE FUNCTIONS ARE a CLASS OF FUNCTIONS which AGGREGATE the
-- RESULT SET. The RESULT OF this IS that the RESULT SET will be 
-- compressed BY the AGGREGATE FUNCTION AND provide ONLY the aggregated
-- AND GROUPING VALUES.

-- count() - Count IS an AGGREGATE FUNCTION which aggragates ON ROWS AND
-- evaluates TO the total number OF ROWS IN the GROUP.

-- sum() - Aggregates numeric values and evalutes to the sum of those
-- values.

-- min() -- Aggreagtes a numeric column and evaluates to the lowest value
-- found in the column.

SELECT count(*) FROM residents WHERE house_id = 3;

SELECT CEIL(random() * 1000)::Integer;
ALTER TABLE RESIDENTS ADD COLUMN rent INTEGER;
SELECT * FROM residents;

SELECT * FROM residents
	WHERE (SELECT max(rent) FROM residents) = rent;

SELECT id, min(rent) FROM residents;

SELECT sum(rent) FROM residents;
SELECT avg(rent) FROM residents;
SELECT max(rent) FROM residents;

-- GROUP BY clause - GROUPS LIKE VALUES together PRIOR TO aggregation.
-- Once the DATA IS aggregated, we ARE returned a ROW per GROUP.

-- WHERE - Filtering content prior to aggregation
-- HAVING - Filtering content post aggregation

SELECT house_id, count(*), sum(rent), avg(rent) 
	FROM residents 
	WHERE rent < 500
	GROUP BY house_id 
	HAVING SUM(rent) < 31000;

