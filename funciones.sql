-- Funciones

SET SERVEROUTPUT ON

DECLARE
valor VARCHAR2(100):= 'Hola Yadir';

BEGIN
 -- uso de la funcion substring de sql
 DBMS_OUTPUT.put_line(SUBSTR(valor,1,LENGTH(valor)-2));
 
 -- NO esta permitido las funciones de grupo AVG, COUNT ETC
 -- No esta permitido decode
END;

