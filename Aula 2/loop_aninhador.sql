TRUNCATE TABLE tabela1;

BEGIN
    << loopexterno >> FOR i IN 1..3 LOOP
        << loopinterno >> FOR j IN 1..5 LOOP
            IF TO_CHAR(SYSDATE, 'YYYY') = 2018 THEN
                INSERT INTO tabela1 
                VALUES ( 'Inserindo texto numero '
                                         || i
                                         || j );
            END IF;
        END LOOP loopexterno;
    END LOOP loopinterno;
END;
/


SELECT * FROM tabela1;