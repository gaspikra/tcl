use hoteles;

START TRANSACTION; 
DELETE FROM inquilino WHERE id < 3;
-- ROLLBACK;
COMMIT;


START TRANSACTION;
SAVEPOINT savepoint_4;
INSERT INTO inquilino (id, nombre, apellido, dni, cant_acomp, habitaciones, banco) VALUES
(null, 'ramiro', 'sas', 40271107, 0, 10, 1),
(null, 'sergio', 'lolper', 62860482, 2, 11, 2),
(null, 'tomas', 'sand', 372193112, 4, 14, 5),
(null, 'marcos', 'gonzales', 40980004, 0, 15, 3);
SAVEPOINT savepoint_8;
INSERT INTO inquilino (id, nombre, apellido, dni, cant_acomp, habitaciones, banco) VALUES
(null, 'felipe', 'mardon', 31212901, 3, 15, 4),
(null, 'juan', 'herrerass', 39129001, 4, 14, 6),
(null, 'inaqui', 'paz', 30712812, 3, 1, 7),
(null, 'douglas', 'simon', 39011810, 1, 15, 8);
-- ROLLBACK TO SAVEPOINT savepoint_4;
COMMIT;
