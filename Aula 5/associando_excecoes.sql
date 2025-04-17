DECLARE
    e_meu_erro EXCEPTION;
    PRAGMA exception_init ( e_meu_erro, -2292 );
BEGIN
    DELETE FROM dept
    WHERE
        deptno = 10;

    COMMIT;
EXCEPTION
    WHEN e_meu_erro THEN
        dbms_output.put_line('Integridade Referencial
Violada');
        ROLLBACK;
END;
/