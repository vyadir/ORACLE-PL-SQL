-- probando paquetes
SET SERVEROUTPUT ON
DECLARE
  V1 VARCHAR2(100);
BEGIN
 V1:=PACK1.CONVERT('AAAAA','L');
 DBMS_OUTPUT.PUT_LINE(V1);
END;



/
-- Probando paquetes en consultas sql 
SELECT
    first_name,PACK1.CONVERT(FIRST_NAME,'L'),PACK1.CONVERT(LAST_NAME,'U')
FROM
    employees;
