TRUNCATE TABLE tabela1;

DECLARE
    v_contador NUMBER(2) := 1;
BEGIN
    WHILE v_contador <= 10 LOOP
        INSERT INTO tabela1 
        VALUES ( 'Inserindo texto numero ' || v_contador );
        v_contador := v_contador + 1;
    END LOOP;
END;
/

SELECT * FROM tabela1;

