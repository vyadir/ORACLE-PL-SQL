-- ciclo for

SET SERVEROUTPUT ON

DECLARE
    nombre VARCHAR2(6) := 'YADIR';
BEGIN
    FOR i IN 1..length(nombre) LOOP
        dbms_output.put_line(i);
    END LOOP;
 
 -- reverse
    FOR i IN REVERSE 1..length(nombre) LOOP
        dbms_output.put_line(i);
    END LOOP;

END;