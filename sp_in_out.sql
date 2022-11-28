-- Los parametros in-out pasa y devuelve un valor desde el sp
CREATE OR REPLACE PROCEDURE calc_tax_in_out (empl IN employees.employee_id%TYPE,t1   IN OUT NUMBER) IS
    sal NUMBER := 0;
BEGIN
    IF t1 < 0 OR t1 > 60 THEN
        raise_application_error(-20000, 'PARAMETROS NO VALIDOS');
    END IF;

    SELECT
        salary
    INTO sal
    FROM
        employees
    WHERE
        employee_id = empl;
    dbms_output.put_line('t1: ' || t1);
    t1 := sal * t1 / 100;
    dbms_output.put_line('Salario: ' || sal);
  
EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('No existe el empleado');
END;
/

SET SERVEROUTPUT ON;
DECLARE
A NUMBER;
B NUMBER;

BEGIN
A:=120;
B:= 10;
CALC_TAX_IN_OUT(A,B);
dbms_output.put_line('B: ' || B);
END;