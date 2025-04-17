DECLARE
    cod   erros.cod_erro%TYPE;
    msg   erros.msg_erro%TYPE;
    cinco NUMBER := 5;
BEGIN
    BEGIN
        DELETE FROM dept
        WHERE
            deptno = 10;

    EXCEPTION
        WHEN zero_divide THEN
            dbms_output.put_line('Erro no bloco interno');
    END;

    dbms_output.put_line(cinco /(cinco - cinco));
EXCEPTION
    WHEN OTHERS THEN
        cod := sqlcode;
        msg := substr(sqlerrm, 1, 100);
        INSERT INTO erros VALUES ( user,
                                   sysdate,
                                   cod,
                                   msg );

END;
/