CREATE OR REPLACE 
PACKAGE PACK2 AS 

  FUNCTION COUNT_EMPLOYEES(ID NUMBER)RETURN NUMBER;
  FUNCTION COUNT_EMPLOYEES(ID VARCHAR2) RETURN NUMBER;

END PACK2;