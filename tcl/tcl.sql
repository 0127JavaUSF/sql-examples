-- TRANSACTION - A mechanism of two OR MORE DATABASE operations INTO a 
-- single ATOMIC DATABASE operation.

-- WHEN should we use a TRANSACTION?
-- WHEN we need TO conduct multiple mutative queries that need TO
-- occur atomically, OR otherwise could put our DATABASE IN 
-- an invalid state IF they were NOT ALL TO happen together.

-- ACID
--	ATOMIC - Entire transaction eecutes or none does.
--  CONSISTENT - A transaction moves the database from one valid state to another.
--  ISOLATED - Transactions should execute as if they cocurred sequentially.
--  DURABLE - We should not commit until we are sure data can be made permanent.
--			Once committed data is permanent. Database administrators should 
--			always be prepared for emergencies or disasters that might endanger
--			data.

SELECT * FROM residents WHERE id < 10;
BEGIN; -- Starts a transaction
UPDATE residents SET name = 'Jerry' WHERE id = 4;
SELECT * FROM residents WHERE id < 10;
SAVEPOINT my_savepoint;
SELECT * FROM residents WHERE id < 10;
UPDATE residents SET name = 'Jill' WHERE id = 3;
SELECT * FROM residents WHERE id < 10;
ROLLBACK TO my_savepoint;
SELECT * FROM residents WHERE id < 10;
UPDATE residents SET NAME = 'Jack' WHERE id = 7;
COMMIT;
SELECT * FROM residents WHERE ID < 10;
