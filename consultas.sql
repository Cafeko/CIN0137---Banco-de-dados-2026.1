-- Equipe 2 --
/* Dyego Ferreira da Silva            - dfs10
Caio Ferreira Gomes da Silva       - cfgs
Júlio Cesar da SIlva                - jcs8
Anysabele de Paula Barbosa Santos  - apbs2
Jairo Cândido Gonzaga Neto         - jcgn
Vinicius guedes de macedo          - Vgm
*/

-- script de consultas --

-- Adicionar email de alunos para receberem notificações da academia.
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


-- 
