DECLARE
    cinco NUMBER := 5;
BEGIN
    dbms_output.put_line(cinco /(cinco - cinco));
EXCEPTION
    WHEN zero_divide THEN
        raise_application_error(-20901, 'Erro aritmetico.
Reveja o programa');
    WHEN OTHERS THEN
        dbms_output.put_line('Erro imprevisto');
END;
/

DECLARE
    e_meu_erro EXCEPTION;
    PRAGMA exception_init ( e_meu_erro, -2292 );
BEGIN
    DELETE FROM dept
    WHERE
        deptno = 33;

    IF SQL%notfound THEN
        raise_application_error(-20901, 'Departamento
Inexistente');
        ROLLBACK;
    END IF;
    COMMIT;
EXCEPTION
    WHEN e_meu_erro THEN
        dbms_output.put_line('Integridade Referencial
Violada');
        ROLLBACK;
END;
/