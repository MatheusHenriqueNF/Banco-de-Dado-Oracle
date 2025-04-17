SET SERVEROUTPUT ON

DECLARE
    cinco NUMBER := 5;
BEGIN
    dbms_output.put_line(cinco /(cinco - cinco));
EXCEPTION
    WHEN zero_divide THEN
        dbms_output.put_line('SQLCODE: '
                             || sqlcode
                             || '
SQLERRM: '
                             || sqlerrm);
        dbms_output.put_line('Divisao por zero');
    WHEN OTHERS THEN
        dbms_output.put_line('SQLCODE: '
                             || sqlcode
                             || '
SQLERRM: '
                             || sqlerrm);
        dbms_output.put_line('Erro imprevisto');
END;
/

CREATE TABLE erros (
    usuario  VARCHAR2(30),
    data     DATE,
    cod_erro NUMBER,
    msg_erro VARCHAR2(100)
);

SET SERVEROUTPUT ON

DECLARE
    cod   erros.cod_erro%TYPE;
    msg   erros.msg_erro%TYPE;
    cinco NUMBER := 5;
BEGIN
    dbms_output.put_line(cinco /(cinco - cinco));
EXCEPTION
    WHEN zero_divide THEN
        cod := sqlcode;
        msg := substr(sqlerrm, 1, 100);
        INSERT INTO erros VALUES ( user,
                                   sysdate,
                                   cod,
                                   msg );

    WHEN OTHERS THEN
        dbms_output.put_line('Erro imprevisto');
END;
/

SELECT * FROM ERROS;