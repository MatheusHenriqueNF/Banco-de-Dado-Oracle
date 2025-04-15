DECLARE
    v_tamanho NUMBER(3);
BEGIN
    SELECT
        length(col1)
    INTO v_tamanho
    FROM
        tabela1;

    IF
        v_tamanho > 25
        AND to_char(sysdate, 'YYYY') > 1999
    THEN
        dbms_output.put_line('Maior que 25 bytes e século XXI');
    END IF;

END;
/

UPDATE tabela1
SET
    col1 = '12345';

DECLARE
    v_tamanho NUMBER(3);
BEGIN
    SELECT
        length(col1)
    INTO v_tamanho
    FROM
        tabela1;

    IF v_tamanho > 25
    OR to_char(sysdate, 'YYYY') > 1999 THEN
        dbms_output.put_line('Maior que 25 bytes ou século
XXI');
    END IF;

END;
/