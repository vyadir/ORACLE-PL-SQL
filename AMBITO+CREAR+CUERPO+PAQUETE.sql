-- creacion de paquetes

CREATE OR REPLACE PACKAGE PACK1
IS
  FUNCTION CONVERT (NAME VARCHAR2, CONVERSION_TYPE CHAR) RETURN VARCHAR2;
END;
/

CREATE OR REPLACE PACKAGE BODY PACK1
IS
FUNCTION UP(NAME VARCHAR2)
RETURN VARCHAR2 
IS
BEGIN
    RETURN UPPER(NAME);
END UP;

FUNCTION DO(NAME VARCHAR2)
RETURN VARCHAR2 
IS
BEGIN
    RETURN LOWER(NAME);
END DO;

FUNCTION CONVERT (NAME VARCHAR2, CONVERSION_TYPE CHAR) RETURN VARCHAR2
 IS
 BEGIN
    IF CONVERSION_TYPE='U' THEN
       RETURN(UP(NAME));
    ELSIF CONVERSION_TYPE='L' THEN
       RETURN(DO(NAME));
    ELSE
       RETURN('EL PARAMETRO DEBE SER U o L');
   END IF;
END CONVERT;

END PACK1;