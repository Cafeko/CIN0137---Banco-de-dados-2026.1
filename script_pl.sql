-- ==========================================
-- SCRIPT PL/SQL 
-- ==========================================

-- CREATE OR REPLACE PACKAGE
CREATE OR REPLACE PACKAGE pkg_gestao_academia AS
    -- CREATE FUNCTION
    FUNCTION calcular_multa_atraso(p_valor_atual IN NUMBER, p_dias_atraso IN NUMBER) RETURN NUMBER;
    
    -- CREATE PROCEDURE | USO DE PARAMETROS (IN, OUT ou IN OUT)
    PROCEDURE atualizar_status_matricula(p_id_mat IN NUMBER, p_novo_status IN VARCHAR2, p_mensagem OUT VARCHAR2);
END pkg_gestao_academia;
/

-- CREATE OR REPLACE PACKAGE BODY
CREATE OR REPLACE PACKAGE BODY pkg_gestao_academia AS
    
    FUNCTION calcular_multa_atraso(p_valor_atual IN NUMBER, p_dias_atraso IN NUMBER) RETURN NUMBER IS
        v_multa NUMBER := 0;
    BEGIN
        IF p_dias_atraso > 0 THEN
            v_multa := p_valor_atual * 0.02 * p_dias_atraso; -- 2% ao dia
        END IF;
        RETURN p_valor_atual + v_multa;
    END calcular_multa_atraso;

    PROCEDURE atualizar_status_matricula(p_id_mat IN NUMBER, p_novo_status IN VARCHAR2, p_mensagem OUT VARCHAR2) IS
    BEGIN
        UPDATE Matricula 
        SET status_matricula = p_novo_status 
        WHERE id_matricula = p_id_mat;
        
        p_mensagem := 'Status atualizado com sucesso.';
    EXCEPTION
        WHEN OTHERS THEN
            p_mensagem := 'Erro ao atualizar a matrícula.';
    END atualizar_status_matricula;

END pkg_gestao_academia;
/

-- CREATE OR REPLACE TRIGGER (COMANDO)
-- Impede deleções em massa na tabela de matrículas fora do horário comercial
CREATE OR REPLACE TRIGGER trg_seguranca_delete_matricula
BEFORE DELETE ON Matricula
BEGIN
    IF TO_CHAR(SYSDATE, 'HH24') NOT BETWEEN '06' AND '22' THEN
        RAISE_APPLICATION_ERROR(-20001, 'Deleções de matrícula só podem ocorrer em horário comercial.');
    END IF;
END;
/

-- CREATE OR REPLACE TRIGGER (LINHA)
-- Valida para que nenhum Plano seja cadastrado ou atualizado com valor negativo
CREATE OR REPLACE TRIGGER trg_valida_valor_plano
BEFORE INSERT OR UPDATE ON Plano
FOR EACH ROW
BEGIN
    IF :NEW.valor < 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'O valor de um plano não pode ser negativo.');
    END IF;
END;
/

-- BLOCO ANÔNIMO
DECLARE
    -- USO DE RECORD
    TYPE rec_dados_aluno IS RECORD (
        nome Pessoa.nome%TYPE,
        email Aluno.email%TYPE,
        status Matricula.status_matricula%TYPE
    );
    v_info_aluno rec_dados_aluno;

    -- USO DE ESTRUTURA DE DADOS DO TIPO TABLE | %TYPE
    TYPE tab_id_alunos IS TABLE OF Aluno.id_pessoa%TYPE INDEX BY PLS_INTEGER;
    v_lista_ids tab_id_alunos;

    -- %ROWTYPE
    v_linha_plano Plano%ROWTYPE;

    -- CURSOR (OPEN, FETCH e CLOSE)
    CURSOR c_matriculas_ativas IS
        SELECT id_matricula, status_matricula
        FROM Matricula
        WHERE status_matricula = 'ativo';

    v_id_mat Matricula.id_matricula%TYPE;
    v_status Matricula.status_matricula%TYPE;
    v_contador NUMBER := 1;
    v_retorno_proc VARCHAR2(100);

BEGIN
    -- SELECT ... INTO
    SELECT P.nome, A.email, M.status_matricula 
    INTO v_info_aluno.nome, v_info_aluno.email, v_info_aluno.status
    FROM Pessoa P 
    INNER JOIN Aluno A ON P.id = A.id_pessoa
    INNER JOIN Matricula M ON A.id_pessoa = M.id_aluno
    WHERE P.id = 1121 AND ROWNUM = 1;
    
    DBMS_OUTPUT.PUT_LINE('Aluno encontrado: ' || v_info_aluno.nome);

    -- IF ELSIF
    IF v_info_aluno.email IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Possui e-mail cadastrado.');
    ELSIF v_info_aluno.nome = 'Visitante' THEN
        DBMS_OUTPUT.PUT_LINE('É um visitante.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('E-mail não cadastrado.');
    END IF;

    -- CASE WHEN
    CASE 
        WHEN v_info_aluno.status = 'ativo' THEN DBMS_OUTPUT.PUT_LINE('Status da matrícula: ATIVO.');
        WHEN v_info_aluno.status = 'inativo' THEN DBMS_OUTPUT.PUT_LINE('Status da matrícula: INATIVO.');
        ELSE DBMS_OUTPUT.PUT_LINE('Status não reconhecido.');
    END CASE;

    -- WHILE LOOP
    -- Populando a Tabela em memória
    WHILE v_contador <= 3 LOOP
        v_lista_ids(v_contador) := 1120 + v_contador;
        v_contador := v_contador + 1;
    END LOOP;

    -- FOR IN LOOP
    FOR i IN 1..v_lista_ids.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE('ID na coleção: ' || v_lista_ids(i));
    END LOOP;

    -- LOOP EXIT WHEN
    OPEN c_matriculas_ativas;
    LOOP
        FETCH c_matriculas_ativas INTO v_id_mat, v_status;
        EXIT WHEN c_matriculas_ativas%NOTFOUND;
        
        -- Simulando a chamada da procedure criada no pacote
        pkg_gestao_academia.atualizar_status_matricula(v_id_mat, v_status, v_retorno_proc);
    END LOOP;
    CLOSE c_matriculas_ativas;

EXCEPTION
    -- EXCEPTION WHEN
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Dados não encontrados na consulta principal. Verifique se o aluno 1121 existe.');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('A consulta retornou mais de uma linha quando deveria retornar apenas uma.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Ocorreu um erro no bloco de processamento.');
END;
/