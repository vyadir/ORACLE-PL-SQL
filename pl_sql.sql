-- pl sql con sql
SET SERVEROUTPUT ON

DECLARE 

salario employees.SALARY%TYPE;
nombre employees.FIRST_NAME%TYPE;
BEGIN

SELECT Salary,first_name INTO salario,nombre FROM employees WHERE employee_id=100;
DBMS_OUTPUT.put_line(salario);
DBMS_OUTPUT.put_line(nombre);
END;