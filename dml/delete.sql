-- DELETE FROM table_name WHERE predicate

DELETE FROM residents WHERE LOWER(name) = 'billy';

DELETE FROM houses WHERE id = 1;

-- We cannot DELETE house 1 because it IS being referenced BY
-- resident 1.  This maintains our database's referential INTEGRITY.
-- Referential INTEGRITY IS the state AND idea OF relations IN the
-- DATABASE reliably resolving TO the related DATA.