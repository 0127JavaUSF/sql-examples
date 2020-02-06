-- houses
CREATE TABLE houses (
	id SERIAL PRIMARY KEY,
	build_name VARCHAR(35),
	apartment_number VARCHAR(10)
);
-- residents
CREATE TABLE residents (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	email VARCHAR NOT NULL UNIQUE,
	house_id INTEGER NOT NULL REFERENCES houses(id)
--	Alternative syntax:	FOREIGN KEY house_id REFERENCES houses(id)
);

-- One TO many
-- One house TO many residents