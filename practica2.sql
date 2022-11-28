SET SERVEROUTPUT ON
/*
Bloques anidados

Primero busca en el hijo y si no la encuentra lo busca en la padre
*/
DECLARE
valor number(2):=20;

BEGIN
DBMS_OUTPUT.put_line(valor);

DECLARE
valor number(2) := 23;

BEGIN 
DBMS_OUTPUT.put_line(valor);
END;

END;
