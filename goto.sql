-- comando goto
-- verifica si es primo
SET SERVEROUTPUT ON

DECLARE
    p VARCHAR2(30);
    n number := 894786875;
BEGIN
    FOR i IN 2..round(sqrt(n)) LOOP
        IF n MOD i = 0 THEN
            p := 'No es numero primo';
            GOTO imprime;
        END IF;
    END LOOP;

    p := 'Es un numero primo';
    << imprime >> dbms_output.put_line(p);
END;