-- Ciclos

SET SERVEROUTPUT ON

DECLARE
    valor NUMBER := 1;
BEGIN
    LOOP
        dbms_output.put_line(valor);
        valor := valor + 1;
        EXIT WHEN VALOR =21;
    END LOOP;
END;