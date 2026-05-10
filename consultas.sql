-- Equipe 2 --
/* Dyego Ferreira da Silva            - dfs10
Caio Ferreira Gomes da Silva       - cfgs
Júlio Cesar da SIlva                - jcs8
Anysabele de Paula Barbosa Santos  - apbs2
Jairo Cândido Gonzaga Neto         - jcgn
Vinicius guedes de macedo          - Vgm
*/

-- script de consultas --

-- Adicionar email de alunos para receberem notificações da academia. --
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


-- Cria indices para buscas mais rapidas. --
/*
    Indice enumera um atributo e ajuda consultas sobre aquele atributo a serem mais rapidas.
    Melhor para atributos que não tem valores que se repetem muito.
*/ 
-- Ajuda em consulstas de pessoas por cpf:
CREATE INDEX index_pessoa ON Pessoa (cpf);

-- Ajuda em consulstas de matriculas por aluno:
CREATE INDEX index_matriculas_aluno ON Matricula (id_aluno);

-- Ajuda em consulstas de avaliação por aluno e/ou professor:
CREATE INDEX index_avaliação_aluno_alunoprofessor ON Avaliação_Aluno (id_aluno, id_professor);


-- Quantidade de alunos com matricula ativa por unidade --
SELECT U.nome_unidade, COUNT(DISTINCT M.id_aluno) as alunos_ativos 
FROM Unidade U, Matricula M
WHERE M.status_matricula = 'ativo' AND U.id_unidade = M.id_unidade
GROUP BY U.nome_unidade;


-- Exibe alunos ordenados por idade, do mais velho ao mais novo --
SELECT P.nome, P.data_nasc as data_nascimento, FLOOR(MONTHS_BETWEEN(SYSDATE, P.data_nasc)/12) as idade
FROM Pessoa P, Aluno A
WHERE P.id = A.id_pessoa
ORDER BY idade DESC;


-- Alunos que não tem o email cadastrado --
SELECT P.id, P.nome
FROM Pessoa P INNER JOIN Aluno A ON P.id = A.id_pessoa
WHERE A.email IS NULL;


--  --


