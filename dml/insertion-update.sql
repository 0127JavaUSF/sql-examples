-- DML - DATA Manipulation LANGUAGE
-- 1. INSERT - Adds ROWS TO our TABLES
-- 2. UPDATE - UPDATE ROW DATA IN ROWS that already exist
-- 3. DELETE - Remove ROWS FROM the TABLE

-- INSERT INTO table_name (col_name, ...) VALUES (col_values, ...), ...
INSERT INTO people (id, first_name, last_name, email, birthdate)
	VALUES (1, 'Abby', 'Adams', 'abby@aol.com', '1985-01-01');
	

INSERT INTO houses (build_name, apartment_number) VALUES
	('IQ', '408'), ('IQ', '401'), ('Reflections', '200B');
	
INSERT INTO residents (name, email, house_id) VALUES
	('Billy', 'billy@boa.com', 1), ('Cindy', 'cindy@comcast.com', 2),
	('Danny', 'dan@disney.com', 3), ('Emily', 'emily@email.com', 1);
	
--INSERT INTO residents (name, email, house_id) VALUES
--	('Frankie', 'frank@fox.net', 5);

--UPDATE table_name SET col=val, ... WHERE predicate 
-- WHERE clause is a predicate that defines which rows should operated
-- on by the statement, such that affected rows are only those in which
-- the predicate evaluates to true

UPDATE residents SET name = name || 'C' WHERE id = 2;
