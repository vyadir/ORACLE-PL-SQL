-- ejemplo de switch case

SET SERVEROUTPUT ON

DECLARE
    opcion CHAR(1);
BEGIN
opcion := 'B';

CASE opcion
WHEN 'A' THEN
DBMS_OUTPUT.PUT_LINE(1); 

WHEN 'B' THEN
DBMS_OUTPUT.PUT_LINE(2);

end case;
end;