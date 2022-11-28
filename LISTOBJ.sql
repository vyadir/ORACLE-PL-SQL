-- USER OBJECTS

-- LISTA LOS sp que tenga
SELECT * FROM user_objects
WHERE object_type = 'PROCEDURE';

-- MUESTRA CUANTOS OBJETOS TENEMOS
SELECT OBJECT_TYPE, COUNT(*) FROM USER_OBJECTS
GROUP BY OBJECT_TYPE;

-- Muestra el codigo de un  sp EN TABLA
SELECT * FROM USER_SOURCE
WHERE NAME = 'SP1';

-- Muestra el codigo de un  sp

SELECT TEXT FROM USER_SOURCE
WHERE NAME = 'SP1';