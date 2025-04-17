DECLARE
    CURSOR cursor_emp IS
    SELECT
        deptno,
        SUM(sal) soma
    FROM
        emp
    GROUP BY
        deptno;

BEGIN
    FOR emprec IN cursor_emp LOOP
        dbms_output.put_line('Departamento: ' || emprec.deptno);
        dbms_output.put_line('Salario : ' || emprec.soma);
    END LOOP;
END;
/

BEGIN
    FOR emprec IN (
        SELECT
            deptno,
            SUM(sal) soma
        FROM
            emp
        GROUP BY
            deptno
    ) LOOP
        dbms_output.put_line('Departamento: ' || emprec.deptno);
        dbms_output.put_line('Salario : ' || emprec.soma);
    END LOOP;
END;
/