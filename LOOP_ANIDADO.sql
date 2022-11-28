-- LOOPS ANIDADOS

SET SERVEROUTPUT ON

DECLARE
    i NUMBER := 0;
    j NUMBER := 0;
    k NUMBER;
BEGIN
    << padre >> LOOP
        i := i + 1;
        j := 100;
        dbms_output.put_line('Padre: ' || i);
        << hijo >> LOOP
            EXIT padre WHEN ( i > 3 );
            dbms_output.put_line('Hijo: ' || j);
            j := j + 1;
            EXIT hijo WHEN ( j > 105 );
        END LOOP hijo;

    END LOOP padre;

    dbms_output.put_line('HA FINALIZADO *****');
END;