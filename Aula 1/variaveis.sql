DECLARE
    v_variavel VARCHAR2(5);
BEGIN
    SELECT nome_coluna
    INTO v_variavel
    FROM nome_tabela;
EXCEPTION
    WHEN exception_name THEN
END;
/

DECLARE
    v_nascimento DATE;
    v_data DATE := SYSDATE + 7;
    v_codigo NUMBER(2) NOT NULL := 10;
    v_UF CHAR(2) := 'SP';
    v_loc VARCHAR2(2) DEFAULT 'RJ';
    v_valor1 INTEGER := 2;
    v_valor2 INTEGER := 4;
    v_teste_logico BOOLEAN := (v_valor1 < v_valor2);
    c_const CONSTANT NUMBER := 54;
BEGIN
    DBMS_OUTPUT.PUT_LINE('');
END;

SET SERVEROUTPUT ON
DECLARE
    v_teste VARCHAR2(30) := 'Hello World';
BEGIN 
    DBMS_OUTPUT.PUT_LINE(v_teste);
END;
/
