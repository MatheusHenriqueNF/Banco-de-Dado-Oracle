CREATE TABLE tabela1 (
    col1 VARCHAR2(18)
);

INSERT INTO tabela1 VALUES ( 'Campo com 18 bytes' );

SET SERVEROUTPUT ON

DECLARE
    v_col1 VARCHAR2(18);
BEGIN
    SELECT
        col1
    INTO v_col1
    FROM
        tabela1;

    dbms_output.put_line('Valor = ' || v_col1);
END;
/

TRUNCATE TABLE tabela1;

ALTER TABLE tabela1 MODIFY
    col1 VARCHAR2(30);

INSERT INTO tabela1 VALUES ( 'Tamanho alterado para 30 bytes' );

--EXEMPLO DE CÓDIGO NÃO FUNCIONAL, POIS A VARIÁVEL TEM O TAMANHO MENOR QUE O CAMPO DA TABELA
SET SERVEROUTPUT ON

DECLARE
    v_col1 VARCHAR2(18);
BEGIN
    SELECT
        col1
    INTO v_col1
    FROM
        tabela1;

    dbms_output.put_line('Valor = ' || v_col1);
END;
/

--UTILIZA-SE O %TYPE PARA A VARIÁVEL SEMPRE TER O MESMO TAMANHO QUE A COLUNA DA TABELA
DECLARE
    v_col1 tabela1.col1%TYPE;
BEGIN
    SELECT
        col1
    INTO v_col1
    FROM
        tabela1;

    dbms_output.put_line('Valor = ' || v_col1);
END;
/