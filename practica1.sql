-- PARA IMPRIMIR POR PANTALLA
-- Ctrl f7 identa
-- Boolean puede ser null, true o false

SET SERVEROUTPUT ON

DECLARE
    nombre          VARCHAR2(100) := 'Yadir';
    edad            NUMBER(2) := 25;
    novias          NUMBER(2) NOT NULL := 1;
    casado          BOOLEAN;
    color_favorito  VARCHAR2(10) := 'Amarillo';
    
    -- toma el mismo tipo de dato de la variable color favorito
    color_favorito2 color_favorito%TYPE;
BEGIN
    dbms_output.put_line('Mi nombre es: '
                         || nombre
                         || ' y mi edad es: '
                         || edad);
    dbms_output.put_line('Novias: ' || novias);
    
    -- Sentencia de control if else
    IF casado = true THEN
        dbms_output.put_line('Es casado');
    ELSIF casado = false THEN
        dbms_output.put_line('No es casado');
    ELSE
        dbms_output.put_line('No se sabe si es casado');
    END IF;

    color_favorito2 := 'Rojo';
    dbms_output.put_line('Los colores favoritos son: '
                         || color_favorito
                         || ' y '
                         || color_favorito2);
    
    
    /* OPERADORES MAS HABITUALES

   +    SUMA
   -    RESTA
   /    DIVISION
   *    MULTIPLICACION
   **   EXPONENTE
   ||   CONCATENAR
    */
  
    dbms_output.put_line('Tiene ' || 2**2 || ' hijos');
END;