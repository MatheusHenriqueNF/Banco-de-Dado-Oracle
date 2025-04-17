DECLARE
    emprec emp%rowtype;
    CURSOR cursor_emp IS
    SELECT
        empno,
        sal
    FROM
        emp
    FOR UPDATE;

BEGIN
    OPEN cursor_emp;
    LOOP
        FETCH cursor_emp INTO
            emprec.empno,
            emprec.sal;
        EXIT WHEN cursor_emp%notfound;
        UPDATE emp
        SET
            sal = sal * 1.05
        WHERE
            CURRENT OF cursor_emp;

    END LOOP;

    CLOSE cursor_emp;
END;
/

