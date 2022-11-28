-- triggers son dse 3 tipos DML, ddl, database

-- puede ser before,after e instead of

-- ejemplo de trigger que luego de una insercion guarda user de la insercion
CREATE OR REPLACE TRIGGER TG1
AFTER INSERT ON REGIONS

BEGIN 
INSERT INTO LOG_TABLE VALUES('Inserción en regiones',USER);
END;