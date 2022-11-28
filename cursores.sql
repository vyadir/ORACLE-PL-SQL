-- cursores 


SET SERVEROUTPUT ON;

DECLARE
    CURSOR c1 IS
    SELECT
        *
    FROM
        regions;

    v1 regions%rowtype;
BEGIN
    OPEN c1;
    LOOP
        FETCH c1 INTO v1;
        EXIT WHEN c1%notfound;
        dbms_output.put_line(v1.region_name);
    END LOOP;

    CLOSE c1;
    FOR i IN c1 LOOP
        dbms_output.put_line(i.region_name);
    END LOOP;


-- lo mejor
    FOR i IN (
        SELECT
            *
        FROM
            regions
    ) LOOP
        dbms_output.put_line(i.region_name);
    END LOOP;

END;