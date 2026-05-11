-- Equipe 2 --
/* Dyego Ferreira da Silva            - dfs10
Caio Ferreira Gomes da Silva       - cfgs
Júlio Cesar da SIlva                - jcs8
Anysabele de Paula Barbosa Santos  - apbs2
Jairo Cândido Gonzaga Neto         - jcgn
Vinicius guedes de macedo          - Vgm
*/

-- ==========================================
-- SCRIPT DE CONSULTAS
-- ==========================================

-- ALTER TABLE | UPDATE
-- Adiciona e popula a coluna de email para notificações.
ALTER TABLE Aluno ADD email VARCHAR2(60);
UPDATE Aluno SET email = 'MarianaAlves123@gmail.com' WHERE id_pessoa = 1121;
UPDATE Aluno SET email = 'CarlosEPL@gmail.com' WHERE id_pessoa = 1122;
UPDATE Aluno SET email = 'FernandaGRodrigues@gmail.com' WHERE id_pessoa = 1123;
UPDATE Aluno SET email = 'CamilaSilva93@gmail.com' WHERE id_pessoa = 1131;
UPDATE Aluno SET email = 'DiegoPedra@gmail.com' WHERE id_pessoa = 1132;
UPDATE Aluno SET email = 'RicardoAlves@gmail.com' WHERE id_pessoa = 1133;
UPDATE Aluno SET email = 'TatianeSouza19@gmail.com' WHERE id_pessoa = 1134;
UPDATE Aluno SET email = 'Edulimabatis@gmail.com' WHERE id_pessoa = 1135;
UPDATE Aluno SET email = 'RenataGomes@gmail.com' WHERE id_pessoa = 1136;
UPDATE Aluno SET email = 'FelipeCosta@gmail.com' WHERE id_pessoa = 1137;
UPDATE Aluno SET email = 'MarceloTrabalho@gmail.com' WHERE id_pessoa = 1143;
UPDATE Aluno SET email = 'JulioCesar100ac@gmail.com' WHERE id_pessoa = 1144;
UPDATE Aluno SET email = 'VanessaRocha@gmail.com' WHERE id_pessoa = 1145;
UPDATE Aluno SET email = 'AndersonPCavalcante@gmail.com' WHERE id_pessoa = 1146;
UPDATE Aluno SET email = 'PriscilaAlves@gmail.com' WHERE id_pessoa = 1147;
COMMIT;

-- DROP INDEX (Execute apenas se precisar limpar os índices antigos antes de recriar)
-- DROP INDEX index_pessoa;
-- DROP INDEX index_matriculas_aluno;
-- DROP INDEX index_avaliação_aluno_alunoprofessor;

-- CREATE INDEX
-- Cria índices para otimizar buscas por CPF, matrículas e avaliações.
CREATE INDEX index_pessoa ON Pessoa (cpf);
CREATE INDEX index_matriculas_aluno ON Matricula (id_aluno);
CREATE INDEX index_avaliação_aluno_alunoprofessor ON Avaliação_Aluno (id_aluno, id_professor);

-- SELECT-FROM-WHERE | COUNT | GROUP BY
-- Conta alunos com matrícula ativa agrupados por unidade.
SELECT U.nome_unidade, COUNT(DISTINCT M.id_aluno) as alunos_ativos 
FROM Unidade U, Matricula M
WHERE M.status_matricula = 'ativo' AND U.id_unidade = M.id_unidade
GROUP BY U.nome_unidade;

-- ORDER BY
-- Lista alunos ordenados por idade (do mais velho ao mais novo).
SELECT P.nome, P.data_nasc as data_nascimento, FLOOR(MONTHS_BETWEEN(SYSDATE, P.data_nasc)/12) as idade
FROM Pessoa P, Aluno A
WHERE P.id = A.id_pessoa
ORDER BY idade DESC;

-- IS NULL ou IS NOT NULL | INNER JOIN
-- Retorna alunos que ainda não possuem email cadastrado.
SELECT P.id, P.nome
FROM Pessoa P INNER JOIN Aluno A ON P.id = A.id_pessoa
WHERE A.email IS NULL;

-- INSERT INTO | DELETE
-- Simula o cadastro e exclusão de uma matrícula temporária.
INSERT INTO Matricula (id_matricula, id_aluno, id_unidade, id_plano, status_matricula, data_inicio) 
VALUES (99999, 1121, 10, 5555, 'inativo', SYSDATE);
DELETE FROM Matricula WHERE id_matricula = 99999;
COMMIT;

-- BETWEEN | LIKE
-- Busca alunos em um intervalo de IDs que utilizam provedor Gmail.
SELECT P.nome, A.email 
FROM Pessoa P 
INNER JOIN Aluno A ON P.id = A.id_pessoa
WHERE A.email LIKE '%@gmail.com' 
AND P.id BETWEEN 1120 AND 1140;

-- IN | MAX | MIN | AVG
-- Relatório financeiro de planos por unidade (apenas matrículas ativas/inativas).
SELECT M.id_unidade, 
       MAX(PL.valor) as maior_mensalidade, 
       MIN(PL.valor) as menor_mensalidade, 
       ROUND(AVG(PL.valor), 2) as media_mensalidade
FROM Matricula M
INNER JOIN Plano PL ON M.id_plano = PL.id_plano
WHERE M.status_matricula IN ('ativo', 'inativo')
GROUP BY M.id_unidade;

-- LEFT OUTER JOIN | HAVING
-- Identifica unidades com alto volume de matrículas (mais de 2).
SELECT U.nome_unidade, COUNT(M.id_matricula) as total_matriculas
FROM Unidade U 
LEFT OUTER JOIN Matricula M ON U.id_unidade = M.id_unidade
GROUP BY U.nome_unidade
HAVING COUNT(M.id_matricula) > 2;

-- SUBCONSULTA COM OPERADOR RELACIONAL
-- Encontra o aluno que possui a matrícula atrelada ao plano mais caro.
SELECT nome 
FROM Pessoa 
WHERE id = (SELECT M.id_aluno 
            FROM Matricula M 
            INNER JOIN Plano PL ON M.id_plano = PL.id_plano 
            ORDER BY PL.valor DESC 
            FETCH FIRST 1 ROWS ONLY);

-- SUBCONSULTA COM IN
-- Lista os nomes de todas as pessoas que atuam como professores.
SELECT nome 
FROM Pessoa 
WHERE id IN (SELECT id_colaborador FROM Professor);

-- SUBCONSULTA COM ANY
-- Alunos com planos mais caros que pelo menos um plano da Unidade 2.
SELECT M.id_aluno, PL.valor as valor_plano
FROM Matricula M
INNER JOIN Plano PL ON M.id_plano = PL.id_plano
WHERE PL.valor > ANY (SELECT PL2.valor 
                      FROM Matricula M2 
                      INNER JOIN Plano PL2 ON M2.id_plano = PL2.id_plano 
                      WHERE M2.id_unidade = 2);

-- SUBCONSULTA COM ALL
-- Matrículas com valor superior a TODAS as matrículas inativas.
SELECT M.id_matricula, PL.valor as valor_plano
FROM Matricula M
INNER JOIN Plano PL ON M.id_plano = PL.id_plano
WHERE PL.valor > ALL (SELECT PL2.valor 
                      FROM Matricula M2 
                      INNER JOIN Plano PL2 ON M2.id_plano = PL2.id_plano 
                      WHERE M2.status_matricula = 'inativo');

-- UNION
-- Lista unificada de IDs de Pessoas (Alunos + Professores).
SELECT id_pessoa as pessoa_academia FROM Aluno
UNION
SELECT id_colaborador as pessoa_academia FROM Professor;

-- CREATE VIEW
-- Visão consolidada para facilitar contato e cobrança de alunos ativos.
CREATE OR REPLACE VIEW v_alunos_ativos_contato AS
SELECT P.nome, A.email, M.id_unidade, PL.valor as valor_plano
FROM Pessoa P
INNER JOIN Aluno A ON P.id = A.id_pessoa
INNER JOIN Matricula M ON A.id_pessoa = M.id_aluno
INNER JOIN Plano PL ON M.id_plano = PL.id_plano
WHERE M.status_matricula = 'ativo';

-- ==============================================================================
-- GRANT / REVOKE
-- * NOTA PARA AVALIAÇÃO: Como o ambiente Oracle Live SQL bloqueia comandos DCL 
--   (Data Control Language) por questões de permissão, a exigência do GRANT/REVOKE 
--   foi contemplada de forma lógica através de uma Trigger de Segurança no script 
--   PL/SQL, bloqueando acessos indevidos (simulando a falta de um GRANT).
-- ==============================================================================