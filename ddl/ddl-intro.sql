-- This is a comment

-- sql is a scripting language, commands execute procedurally from top to
-- bottom

-- DDL - data Definition language
-- DDL operates on: database objects such as tables,
-- 		views, indexes, functions, sequences
-- Operations that are a part of DDL are:
-- 1. CREATE - Creates an instance of some database object
-- 2. ALTER - Updates the structure or configuration of an object
-- 3. DROP - Removes a database object.
-- 4. TRUNCATE - Removes data, maintains structure. Mostly related to tables.

-- Anatomy of Create
--CREATE TABLE [table_name] (
	-- Comma separated list of column definitions
--	[name] [type] [constraints],
--	...
--);

CREATE TABLE people (
	id INTEGER PRIMARY KEY,
	first_name VARCHAR(40),
	last_name VARCHAR(40)
);

ALTER TABLE people ADD COLUMN email VARCHAR(255);
ALTER TABLE people ADD COLUMN birthdate DATE;
ALTER TABLE people ADD COLUMN a INTEGER, ADD COLUMN b INTEGER;
ALTER TABLE people DROP COLUMN a, DROP COLUMN b;

--ALTER TABLE people DROP COLUMN email;

-- Let's make a people table - What columns do we need?
-- id INTEGER - PRIMARY KEY
-- first_name VARCHAR(40)
-- last_name VARCHAR(40)

-- String types in PostgreSQL
-- CHAR(n) - Character array of fixed size n
--   		CHAR will pad your string, if the string is smaller than n
-- VARCHAR(n) - Character array with variable size and a max of n
--			VARCHAR will not pad your strings
-- TEXT - Text allows for arbitrary length strings at the cost of not
--			being easily parsable or queriable. 



-- CONTRAINTS 
-- A constraint is an extra requirement on a column or columns that specify
-- additional limitation on what data is valid for the column or row.
-- 1. PRIMARY KEY - Unique identifier for a specific row. The PK value
--	Is invalid in any circumstance in in which that value already exists
-- 	in the column or columns or if the value is NULL. PK can be said
--  to imply the UNIQUE and NOT NULL constraints.
-- 2. FOREIGN KEY - Is a column that references a row, generally by its
--	by its primary key. Contrains values by enforcing that any value in
--	this column must correctly reference a record in the referenced
--  table and column.
-- 3. UNIQUE - A value placed in this column(s) must be unique within the
--		column. NULL values can be repeated.
-- 4. NOT NULL - A column declared NOT NULL will enforce that no data
-- 		in this column has a NULL value.
-- 5. CHECK - Check defines an arbitrary predicate (A predicate is an 
--		expression that evalutes to a true or false). Column values are
--		only valid if the predicate returns true.
-- 6. (You don't need to know this one) EXCLUDE - You provide predicate
--		AND the predicate is run against all other values in the column.
--		Data is invalid of any of the predicates return true.



