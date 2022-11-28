-- searched case

SET SERVEROUTPUT ON

DECLARE
cantidad number;

BEGIN
cantidad :=0;

case 

when cantidad > 0 then
DBMS_OUTPUT.PUT_LINE('Es mayor que cero');

when cantidad < 0 then
DBMS_OUTPUT.PUT_LINE('Es menor que cero');

else
DBMS_OUTPUT.PUT_LINE('Es  cero');
END CASE;
END;