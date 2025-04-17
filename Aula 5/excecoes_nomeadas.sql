DECLARE
 e_meu_erro EXCEPTION;
 emprec emp%ROWTYPE;
 CURSOR cursor_emp IS
 SELECT empno, ename
 FROM emp
 WHERE empno = 1111; BEGIN
    OPEN cursor_emp;
    LOOP
        FETCH cursor_emp INTO
            emprec.deptno,
emprec.sal;
        IF cursor_emp%notfound THEN
            RAISE e_meu_erro;
        END IF;
        dbms_output.put_line('Codigo : ' || emprec.empno);
        dbms_output.put_line('Nome : ' || emprec.ename);
        EXIT WHEN cursor_emp%notfound;
    END LOOP;

EXCEPTION
    WHEN e_meu_erro THEN
        dbms_output.put_line('Codigo nao cadastrado');
        ROLLBACK;
END;
/
