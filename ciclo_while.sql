-- ciclo while

SET SERVEROUTPUT ON

DECLARE
i number:=0;
BEGIN

While i<10 LOOP
DBMS_OUTPUT.put_line(i);
i:=i+1;
END LOOP;

END;