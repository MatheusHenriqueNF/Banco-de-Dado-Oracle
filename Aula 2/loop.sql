TRUNCATE TABLE tabela1;

DECLARE
    v_contador NUMBER(2) := 1;
BEGIN
    LOOP
        INSERT INTO tabela1 VALUES ( 'Inserindo texto numero ' || v_contador );
        v_contador := v_contador + 1;
        EXIT WHEN v_contador > 10;
    END LOOP;
END;
/

SELECT * FROM tabela1;