-- Los parametros out devuelve un valor desde el sp
CREATE OR REPLACE PROCEDURE calc_tax_out (
    empl IN employees.employee_id%TYPE,
    t1   IN NUMBER,
    r    OUT NUMBER
) IS
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

    r := sal * t1 / 100;
    dbms_output.put_line('Salario: ' || sal);
EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('No existe el empleado');
END;
/

SET SERVEROUTPUT ON;

DECLARE
    a NUMBER;
    b NUMBER;
    r NUMBER;
BEGIN
    a := 120;
    b := 5;
    r := 0;
    calc_tax_out(a, b, r);
    dbms_output.put_line('r: ' || r);
END;