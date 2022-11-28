-- TRIGGER QUE SOLO DEJA INSERRTAR A HR
CREATE OR REPLACE TRIGGER TG2 
BEFORE INSERT ON REGIONS 
BEGIN
  IF USER <> 'HR' THEN
  RAISE_APPLICATION_ERROR(-20000,'Solo HR puede insertar en la tabla regiones');
  END IF;
END;