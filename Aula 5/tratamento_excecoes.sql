SET SERVEROUTPUT ON

DECLARE
    cinco NUMBER := 5;
BEGIN
    dbms_output.put_line(cinco /(cinco - cinco));
END;
/


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