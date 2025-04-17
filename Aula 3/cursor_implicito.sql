BEGIN
    DELETE FROM emp
    WHERE
        deptno = 1;
    dbms_output.put_line('Linhas apagadas = ' || SQL%rowcount);
    IF SQL%FOUND = TRUE THEN
        dbms_output.put_line('Linhas apagadas = ' || SQL%rowcount);
    ELSE
        dbms_output.put_line('Não encontrado');
    END IF;
    ROLLBACK;
END;
/