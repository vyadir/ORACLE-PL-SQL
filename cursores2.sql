-- cursores actualiza

DECLARE
    emp1 employees%rowtype;
    CURSOR cur IS
    SELECT
        *
    FROM
        employees
    FOR UPDATE;

BEGIN
    OPEN cur;
    LOOP
        FETCH cur INTO emp1;
        EXIT WHEN cur%notfound;
        IF emp1.commission_pct IS NOT NULL THEN
            UPDATE employees
            SET
                salary = salary * 0.10
            WHERE
                CURRENT OF cur;

        ELSE
            UPDATE employees
            SET
                salary = salary * 0.20
            WHERE
                CURRENT OF cur;

        END IF;

    END LOOP;

    CLOSE cur;
END;