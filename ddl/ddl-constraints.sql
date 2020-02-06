-- Store actual cars state
CREATE TABLE cars (
	vin_num VARCHAR(17) PRIMARY KEY,
	make VARCHAR(30) NOT NULL,
	model VARCHAR(30) NOT NULL,
	model_year DATE NOT NULL,
	color VARCHAR(25) NOT NULL,
	time_sold TIMESTAMP DEFAULT(CURRENT_TIMESTAMP) UNIQUE,
	check(character_length(color) > 2),
	check(model_year > '1930-01-01'::DATE AND model_year < CURRENT_TIMESTAMP)
);

-- DEFAULT - Used to provide a default value or expression to be used when 
-- records are entered that do not contain this column.
-- check(character_length(color) > 2) -- what did this do?
--		It would be difficult to express a color in fewer than two characters,
--		so this limitation has been applied.
-- check(model_year > '1930-01-01'::DATE AND model_year < CURRENT_TIMESTAMP)
-- 	Ensuring the model_year fits between 1930-01-01 and the current time.
