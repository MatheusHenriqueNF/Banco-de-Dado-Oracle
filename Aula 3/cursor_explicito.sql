DECLARE
    CURSOR cursor_emp IS
    SELECT
        deptno,
        SUM(sal)
    FROM
        emp
    GROUP BY
        deptno;

BEGIN
    OPEN cursor_emp;
END;
/

DECLARE
    emprec emp%rowtype;
    CURSOR cursor_emp IS
    SELECT
        deptno,
        SUM(sal)
    FROM
        emp
    GROUP BY
        deptno;

BEGIN
    OPEN cursor_emp;
    FETCH cursor_emp INTO
        emprec.deptno,
        emprec.sal;
    dbms_output.put_line('Departamento: ' || emprec.deptno);
    dbms_output.put_line('Salario : ' || emprec.sal);
END;
/

DECLARE
    emprec emp%rowtype;
    CURSOR cursor_emp IS
    SELECT
        deptno,
        SUM(sal)
    FROM
        emp
    GROUP BY
        deptno;

BEGIN
    OPEN cursor_emp;
    LOOP
        FETCH cursor_emp INTO
            emprec.deptno,
            emprec.sal;
        EXIT WHEN cursor_emp%notfound;
        dbms_output.put_line('Departamento: ' || emprec.deptno);
        dbms_output.put_line('Salario : ' || emprec.sal);
    END LOOP;

END;
/