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
    ELSIF v_tamanho > 20 THEN
        dbms_output.put_line('Texto maior que 20');
    ELSIF v_tamanho > 15 THEN
        dbms_output.put_line('Texto maior que 15');
    ELSE
        dbms_output.put_line('Texto menor ou igual a 15');
    END IF;

END;
/

UPDATE tabela1
SET col1 = '123456789012345';