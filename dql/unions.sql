-- Combine RESULT SETS IN certain ways USING the FOLLOWING expressions:

-- 1. UNION -- Combines result sets vertically
-- 2. UNION ALL -- Combines result sets vertically and keeps duplicates
-- 3. INTERSECT -- Finds intersection between two results
-- 4. EXCEPT -- Finds results from first result set MINUS those from
--			the second

SELECT * FROM residents WHERE id < 5
EXCEPT
SELECT * FROM residents WHERE id = 4;

