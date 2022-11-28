-- pl sql con sql
SET SERVEROUTPUT ON

DECLARE 

salario employees.SALARY%TYPE;
nombre employees.FIRST_NAME%TYPE;
empleados employees%ROWTYPE;

BEGIN

SELECT * INTO empleados FROM employees WHERE employee_id=100;
DBMS_OUTPUT.put_line(empleados.SALARY);
DBMS_OUTPUT.put_line(empleados.FIRST_NAME);
END;