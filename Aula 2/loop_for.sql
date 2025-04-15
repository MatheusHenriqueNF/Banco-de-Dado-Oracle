TRUNCATE TABLE tabela1;


BEGIN
    FOR i IN 1..10 LOOP
        INSERT INTO tabela1 
        VALUES ( 'Inserindo texto numero ' || i );
    END LOOP;
END;
/

SELECT * FROM tabela1;