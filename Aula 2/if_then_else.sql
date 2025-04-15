DECLARE
    v_col1    tabela1.col1%TYPE;
    v_tamanho NUMBER(3);
BEGIN
    SELECT
        length(col1),
        col1
    INTO
        v_tamanho,
        v_col1
    FROM
        tabela1;

    IF v_tamanho > 25 THEN
        dbms_output.put_line('Texto = ' || v_col1);
    ELSE
        dbms_output.put_line('Texto menor ou igual a 25');
    END IF;

END;
/
--UPDATE tabela1
--SET col1 = '12345678901234567890123456';

--SELECT * FROM tabela1;