-- Equipe 2 --
/* Dyego Ferreira da Silva            - dfs10
Caio Ferreira Gomes da Silva       - cfgs
Júlio Cesar da SIlva                - jcs8
Anysabele de Paula Barbosa Santos  - apbs2
Jairo Cândido Gonzaga Neto         - jcgn
Vinicius guedes de macedo          - Vgm
*/

-- script do povoamento --

-- 1. Endereços das Cidades que residem as Pessoas da Academia:
INSERT INTO Endereços VALUES ('53020-000', 'Brasil', 'PE', 'Olinda', 'Varadouro', 'Rua do Amparo');
INSERT INTO Endereços VALUES ('53030-010', 'Brasil', 'PE', 'Olinda', 'Carmo', 'Rua do Sol');
INSERT INTO Endereços VALUES ('53040-000', 'Brasil', 'PE', 'Olinda', 'Bairro Novo', 'Avenida Getúlio Vargas');
INSERT INTO Endereços VALUES ('53060-000', 'Brasil', 'PE', 'Olinda', 'Rio Doce', 'Avenida Brasil');
INSERT INTO Endereços VALUES ('53110-000', 'Brasil', 'PE', 'Olinda', 'Peixinhos', 'Avenida Presidente Kennedy');
INSERT INTO Endereços VALUES ('53120-000', 'Brasil', 'PE', 'Olinda', 'Jardim Atlântico', 'Rua Farias Neves');
INSERT INTO Endereços VALUES ('53140-000', 'Brasil', 'PE', 'Olinda', 'Casa Caiada', 'Rua Professor José Cândido Pessoa');
INSERT INTO Endereços VALUES ('53150-000', 'Brasil', 'PE', 'Olinda', 'Ouro Preto', 'Rua 15 de Novembro');
INSERT INTO Endereços VALUES ('53240-000', 'Brasil', 'PE', 'Olinda', 'Águas Compridas', 'Rua da Linha');
INSERT INTO Endereços VALUES ('53330-000', 'Brasil', 'PE', 'Olinda', 'Tabajara', 'Rua Santa Tereza');

INSERT INTO Endereços VALUES ('51021-000', 'Brasil', 'PE', 'Recife', 'Boa Viagem', 'Rua Setúbal');
INSERT INTO Endereços VALUES ('51030-010', 'Brasil', 'PE', 'Recife', 'Boa Viagem', 'Rua Ribeiro de Brito');
INSERT INTO Endereços VALUES ('51011-000', 'Brasil', 'PE', 'Recife', 'Boa Viagem', 'Avenida Conselheiro Aguiar');
INSERT INTO Endereços VALUES ('51020-020', 'Brasil', 'PE', 'Recife', 'Boa Viagem', 'Rua dos Navegantes');
INSERT INTO Endereços VALUES ('51021-010', 'Brasil', 'PE', 'Recife', 'Boa Viagem', 'Rua Bruno Veloso');
INSERT INTO Endereços VALUES ('51030-020', 'Brasil', 'PE', 'Recife', 'Boa Viagem', 'Rua Ernesto de Paula Santos');
INSERT INTO Endereços VALUES ('51020-030', 'Brasil', 'PE', 'Recife', 'Boa Viagem', 'Rua Francisco da Cunha');
INSERT INTO Endereços VALUES ('51010-000', 'Brasil', 'PE', 'Recife', 'Boa Viagem', 'Rua Barão de Souza Leão');
INSERT INTO Endereços VALUES ('51021-020', 'Brasil', 'PE', 'Recife', 'Boa Viagem', 'Rua Padre Carapuceiro');
INSERT INTO Endereços VALUES ('51030-030', 'Brasil', 'PE', 'Recife', 'Boa Viagem', 'Rua Domingos Ferreira');
INSERT INTO Endereços VALUES ('53130-150','Brasil','PE','Olinda','Bairro Novo','Rua da Smart Fit');


-- 2. o sistema de Academia possui duas Unidades principais:
INSERT INTO Unidade VALUES (10, 'Smart fit', '53130-150', '111');  -- olinda
INSERT INTO Unidade VALUES (20, 'Selfit', '51030-020', '122');   -- Boa Vidagem


-- 3. Todas as pessoas cadastradas em ambas academias: 

INSERT INTO Pessoa VALUES (1111, 'Dyego Ferreira da Silva', TO_DATE('2002-03-10','YYYY-MM-DD'), '111.222.333-44', '53020-000', '10', 'A');
INSERT INTO Pessoa VALUES (1113, 'Anysabele de Paula Barbosa Santos', TO_DATE('2004-07-22','YYYY-MM-DD'), '222.333.444-55', '53030-010', '20', 'Apto 101'); 
INSERT INTO Pessoa VALUES (1114, 'Caio Ferreira Gomes da Silva', TO_DATE('2000-05-15','YYYY-MM-DD'), '333.444.555-66', '53040-000', '30', 'B'); 
INSERT INTO Pessoa VALUES (1117, 'Júlio Cesar da Silva', TO_DATE('2002-01-12','YYYY-MM-DD'), '444.555.666-77', '53060-000', '40', 'Bloco B'); 
INSERT INTO Pessoa VALUES (1119, 'Jairo Cândido Gonzaga Neto', TO_DATE('1996-01-25','YYYY-MM-DD'), '555.666.777-88', '53110-000', '50', 'C'); 
INSERT INTO Pessoa VALUES (1115, 'Vinicius guedes de macedo', TO_DATE('1994-11-30','YYYY-MM-DD'), '666.777.888-99', '53120-000', '60', NULL);
INSERT INTO Pessoa VALUES (1116, 'Leonardo Resende Toscano', TO_DATE('2003-06-06','YYYY-MM-DD'), '159.201.674-87', '53140-000', '70', 'A');
INSERT INTO Pessoa VALUES (1120, 'Jefferson Fernandes da Silva', TO_DATE('2001-11-22','YYYY-MM-DD'), '158.211.974-81', '53150-000', '100', 'A');
INSERT INTO Pessoa VALUES (1121, 'Mariana Alves de Souza', TO_DATE('1998-02-14','YYYY-MM-DD'), '101.202.303-40', '53240-000', '15', 'A');
INSERT INTO Pessoa VALUES (1122, 'Carlos Eduardo Pereira Lima', TO_DATE('2001-09-03','YYYY-MM-DD'), '202.303.404-51', '53330-000', '25', 'B');
INSERT INTO Pessoa VALUES (1123, 'Fernanda Gomes Rodrigues', TO_DATE('1999-12-21','YYYY-MM-DD'), '303.404.505-62', '51021-000', '35', 'Casa');
INSERT INTO Pessoa VALUES (1124, 'Rafael Henrique da Costa', TO_DATE('2003-06-18','YYYY-MM-DD'), '404.505.606-73', '51030-010', '45', NULL);
INSERT INTO Pessoa VALUES (1125, 'Juliana Martins Ferreira', TO_DATE('1997-08-09','YYYY-MM-DD'), '505.606.707-84', '51011-000', '55', 'Apto 202');
INSERT INTO Pessoa VALUES (1126, 'Bruno Souza Carvalho', TO_DATE('2000-03-27','YYYY-MM-DD'), '606.707.808-95', '51020-020', '65', 'Bloco C');
INSERT INTO Pessoa VALUES (1127, 'Patricia Oliveira Santos', TO_DATE('1995-11-11','YYYY-MM-DD'), '707.808.909-06', '51021-010', '75', 'Fundos');
INSERT INTO Pessoa VALUES (1128, 'Lucas Barbosa de Andrade', TO_DATE('2002-04-05','YYYY-MM-DD'), '808.909.010-17', '51030-020', '85', 'Casa 2');
INSERT INTO Pessoa VALUES (1129, 'Amanda Ribeiro Fernandes', TO_DATE('1996-07-30','YYYY-MM-DD'), '909.010.111-28', '51020-030', '95', 'A');
INSERT INTO Pessoa VALUES (1130, 'Gustavo Henrique Lopes', TO_DATE('2004-10-12','YYYY-MM-DD'), '010.111.212-39', '51010-000', '105', 'Cobertura');
INSERT INTO Pessoa VALUES (1131, 'Camila Nunes da Silva', TO_DATE('1993-01-19','YYYY-MM-DD'), '121.212.323-40', '51021-020', '115', NULL);
INSERT INTO Pessoa VALUES (1132, 'Diego Rocha Cavalcante', TO_DATE('2001-05-23','YYYY-MM-DD'), '232.323.434-51', '51030-030', '125', 'Bloco A');
INSERT INTO Pessoa VALUES (1133, 'Ricardo Alves Monteiro', TO_DATE('1998-06-11','YYYY-MM-DD'), '343.434.545-62', '53020-000', '135', 'A');
INSERT INTO Pessoa VALUES (1134, 'Tatiane Souza Ribeiro', TO_DATE('2002-09-25','YYYY-MM-DD'), '454.545.656-73', '53030-010', '145', 'Casa');
INSERT INTO Pessoa VALUES (1135, 'Eduardo Lima Batista', TO_DATE('1997-03-18','YYYY-MM-DD'), '565.656.767-84', '53040-000', '155', 'B');
INSERT INTO Pessoa VALUES (1136, 'Renata Gomes de Oliveira', TO_DATE('2000-12-07','YYYY-MM-DD'), '676.767.878-95', '53060-000', '165', NULL);
INSERT INTO Pessoa VALUES (1137, 'Felipe Martins Costa', TO_DATE('2003-04-29','YYYY-MM-DD'), '787.878.989-06', '53110-000', '175', 'Bloco D');
INSERT INTO Pessoa VALUES (1138, 'Aline Ferreira Duarte', TO_DATE('1995-08-13','YYYY-MM-DD'), '898.989.090-17', '53120-000', '185', 'Apto 303');
INSERT INTO Pessoa VALUES (1139, 'Rodrigo Nunes Barros', TO_DATE('1999-01-22','YYYY-MM-DD'), '909.090.101-28', '53140-000', '195', 'Fundos');
INSERT INTO Pessoa VALUES (1140, 'Carla Mendes de Albuquerque', TO_DATE('2001-11-05','YYYY-MM-DD'), '101.101.212-39', '53150-000', '205', 'Casa 1');
INSERT INTO Pessoa VALUES (1141, 'Paulo Henrique Teixeira', TO_DATE('1994-07-17','YYYY-MM-DD'), '212.212.323-40', '53240-000', '215', 'Cobertura');
INSERT INTO Pessoa VALUES (1142, 'Simone Barbosa Freitas', TO_DATE('2002-02-10','YYYY-MM-DD'), '323.323.434-51', '53330-000', '225', 'A');
INSERT INTO Pessoa VALUES (1143, 'Marcelo Cardoso da Silva', TO_DATE('1996-10-03','YYYY-MM-DD'), '434.434.545-62', '51021-000', '235', NULL);
INSERT INTO Pessoa VALUES (1144, 'Julio Cesar Andrade Lima', TO_DATE('1998-05-27','YYYY-MM-DD'), '545.545.656-73', '51030-010', '245', 'Bloco E');
INSERT INTO Pessoa VALUES (1145, 'Vanessa Rocha dos Santos', TO_DATE('2003-09-14','YYYY-MM-DD'), '656.656.767-84', '51011-000', '255', 'Apto 404');
INSERT INTO Pessoa VALUES (1146, 'Anderson Pereira Cavalcante', TO_DATE('1997-01-30','YYYY-MM-DD'), '767.767.878-95', '51020-020', '265', 'B');
INSERT INTO Pessoa VALUES (1147, 'Priscila Alves Rodrigues', TO_DATE('2000-06-19','YYYY-MM-DD'), '878.878.989-06', '51021-010', '275', 'Casa');
INSERT INTO Pessoa VALUES (1148, 'Roberto Souza Fernandes', TO_DATE('1993-12-08','YYYY-MM-DD'), '989.989.090-17', '51030-020', '285', 'Bloco F');
INSERT INTO Pessoa VALUES (1149, 'Larissa Gomes Carvalho', TO_DATE('2001-03-02','YYYY-MM-DD'), '090.090.101-28', '51020-030', '295', NULL);
INSERT INTO Pessoa VALUES (1150, 'Daniel Ribeiro de Melo', TO_DATE('1999-07-21','YYYY-MM-DD'), '111.111.212-39', '51010-000', '305', 'A');
INSERT INTO Pessoa VALUES (1151, 'Beatriz Nunes da Costa', TO_DATE('2004-02-16','YYYY-MM-DD'), '222.222.323-40', '51021-020', '315', 'Apto 505');
INSERT INTO Pessoa VALUES (1152, 'Thiago Martins Bezerra', TO_DATE('1995-11-04','YYYY-MM-DD'), '333.333.434-51', '51030-030', '325', 'Casa 3');

-- 4. Telefones de todas as Pessoas da Academia com seus respectivos nomes comentados:

INSERT INTO Telefone VALUES (1111, '(81) 9 82990015'); -- Dyego Ferreira da Silva
INSERT INTO Telefone VALUES (1113, '(81) 9 91234567'); -- Anysabele de Paula Barbosa Santos
INSERT INTO Telefone VALUES (1114, '(81) 9 47455556'); -- Caio Ferreira Gomes da Silva
INSERT INTO Telefone VALUES (1117, '(81) 9 88887777'); -- Júlio Cesar da Silva
INSERT INTO Telefone VALUES (1119, '(81) 9 93456789'); -- Jairo Cândido Gonzaga Neto
INSERT INTO Telefone VALUES (1115, '(81) 9 95678901'); -- Vinicius Guedes de Macedo
INSERT INTO Telefone VALUES (1116, '(81) 9 97890123'); -- Leonardo Resende Toscano
INSERT INTO Telefone VALUES (1120, '(81) 9 99012345'); -- Jefferson Fernandes da Silva
INSERT INTO Telefone VALUES (1121, '(81) 9 90123456'); -- Mariana Alves de Souza
INSERT INTO Telefone VALUES (1122, '(81) 9 92345678'); -- Carlos Eduardo Pereira Lima
INSERT INTO Telefone VALUES (1123, '(81) 9 94567890'); -- Fernanda Gomes Rodrigues
INSERT INTO Telefone VALUES (1124, '(81) 9 96789012'); -- Rafael Henrique da Costa
INSERT INTO Telefone VALUES (1125, '(81) 9 98901234'); -- Juliana Martins Ferreira
INSERT INTO Telefone VALUES (1126, '(81) 9 91011213'); -- Bruno Souza Carvalho
INSERT INTO Telefone VALUES (1127, '(81) 9 93222334'); -- Patricia Oliveira Santos
INSERT INTO Telefone VALUES (1128, '(81) 9 95433445'); -- Lucas Barbosa de Andrade
INSERT INTO Telefone VALUES (1129, '(81) 9 97644556'); -- Amanda Ribeiro Fernandes
INSERT INTO Telefone VALUES (1130, '(81) 9 99855667'); -- Gustavo Henrique Lopes
INSERT INTO Telefone VALUES (1131, '(81) 9 91966778'); -- Camila Nunes da Silva
INSERT INTO Telefone VALUES (1132, '(81) 9 93177889'); -- Diego Rocha Cavalcante
INSERT INTO Telefone VALUES (1133, '(81) 9 84210011'); -- Ricardo Alves Monteiro
INSERT INTO Telefone VALUES (1134, '(81) 9 85320022'); -- Tatiane Souza Ribeiro
INSERT INTO Telefone VALUES (1135, '(81) 9 86430033'); -- Eduardo Lima Batista
INSERT INTO Telefone VALUES (1136, '(81) 9 87540044'); -- Renata Gomes de Oliveira
INSERT INTO Telefone VALUES (1137, '(81) 9 88650055'); -- Felipe Martins Costa
INSERT INTO Telefone VALUES (1138, '(81) 9 89760066'); -- Aline Ferreira Duarte
INSERT INTO Telefone VALUES (1139, '(81) 9 90870077'); -- Rodrigo Nunes Barros
INSERT INTO Telefone VALUES (1140, '(81) 9 91980088'); -- Carla Mendes de Albuquerque
INSERT INTO Telefone VALUES (1141, '(81) 9 92090099'); -- Paulo Henrique Teixeira
INSERT INTO Telefone VALUES (1142, '(81) 9 93100110'); -- Simone Barbosa Freitas
INSERT INTO Telefone VALUES (1143, '(81) 9 94210221'); -- Marcelo Cardoso da Silva
INSERT INTO Telefone VALUES (1144, '(81) 9 95320332'); -- Julio Cesar Andrade Lima
INSERT INTO Telefone VALUES (1145, '(81) 9 96430443'); -- Vanessa Rocha dos Santos
INSERT INTO Telefone VALUES (1146, '(81) 9 97540554'); -- Anderson Pereira Cavalcante
INSERT INTO Telefone VALUES (1147, '(81) 9 98650665'); -- Priscila Alves Rodrigues
INSERT INTO Telefone VALUES (1148, '(81) 9 99760776'); -- Roberto Souza Fernandes
INSERT INTO Telefone VALUES (1149, '(81) 9 90870887'); -- Larissa Gomes Carvalho
INSERT INTO Telefone VALUES (1150, '(81) 9 91980998'); -- Daniel Ribeiro de Melo
INSERT INTO Telefone VALUES (1151, '(81) 9 93091009'); -- Beatriz Nunes da Costa
INSERT INTO Telefone VALUES (1152, '(81) 9 94101110'); -- Thiago Martins Bezerra

-- 5. Colaboradores das duas unidades:

-- Smart fit:
INSERT INTO Colaborador VALUES (1113, 'Professor(a)', 3100.00, NULL, 10, TO_DATE('2004-07-22','YYYY-MM-DD')); -- Anysabele
INSERT INTO Colaborador VALUES (1119, 'Personal', 4100.00, 1113, 10, TO_DATE('1996-01-25','YYYY-MM-DD')); -- Jairo
INSERT INTO Colaborador VALUES (1117, 'Recepcionista', 2200.00, 1113, 10, TO_DATE('2002-01-12','YYYY-MM-DD')); -- Julio
INSERT INTO Colaborador VALUES (1111, 'Zelador', 1900.00, 1113, 10, TO_DATE('2002-03-10','YYYY-MM-DD')); -- Dyego
INSERT INTO Colaborador VALUES (1115, 'Estagiário', 700.00, 1113, 10, TO_DATE('1994-11-30','YYYY-MM-DD')); -- Vinicius


-- Selfit:
INSERT INTO Colaborador VALUES (1148, 'Professor(a)', 2900.00, NULL, 20, TO_DATE('1993-12-08', 'YYYY-MM-DD')); 
INSERT INTO Colaborador VALUES (1149, 'Personal', 3900.00, 1148, 20, TO_DATE('2001-03-02', 'YYYY-MM-DD')); -- 
INSERT INTO Colaborador VALUES (1150, 'Recepcionista', 2000.00, 1148, 20, TO_DATE('1999-07-21', 'YYYY-MM-DD')); 
INSERT INTO Colaborador VALUES (1151, 'Zelador', 1700.00, 1148, 20 , TO_DATE('2004-02-16', 'YYYY-MM-DD')); 
INSERT INTO Colaborador VALUES (1152, 'Estagiário', 500.00, 1148, 20, TO_DATE('1995-11-04','YYYY-MM-DD')); 



-- 5.1 Professor:
INSERT INTO Professor (id_colaborador) VALUES (1113);
INSERT INTO Professor (id_colaborador) VALUES (1148);

-- 5.2 Funcionário:
INSERT INTO Funcionario (id_colaborador) VALUES(1119);
INSERT INTO Funcionario (id_colaborador) VALUES(1117);
INSERT INTO Funcionario (id_colaborador) VALUES(1111);
INSERT INTO Funcionario (id_colaborador) VALUES(1115);
INSERT INTO Funcionario (id_colaborador) VALUES(1149);
INSERT INTO Funcionario (id_colaborador) VALUES(1150);
INSERT INTO Funcionario (id_colaborador) VALUES(1151);
INSERT INTO Funcionario (id_colaborador) VALUES(1152);

-- 6. Alunos:
INSERT INTO Aluno (id_pessoa) VALUES (1114);
INSERT INTO Aluno (id_pessoa) VALUES (1116); 
INSERT INTO Aluno (id_pessoa) VALUES (1120);
INSERT INTO Aluno (id_pessoa) VALUES (1121);
INSERT INTO Aluno (id_pessoa) VALUES (1122);
INSERT INTO Aluno (id_pessoa) VALUES (1123); 
INSERT INTO Aluno (id_pessoa) VALUES (1124);
INSERT INTO Aluno (id_pessoa) VALUES (1125);
INSERT INTO Aluno (id_pessoa) VALUES (1126);
INSERT INTO Aluno (id_pessoa) VALUES (1127); 
INSERT INTO Aluno (id_pessoa) VALUES (1128); 
INSERT INTO Aluno (id_pessoa) VALUES (1129);
INSERT INTO Aluno (id_pessoa) VALUES (1130);
INSERT INTO Aluno (id_pessoa) VALUES (1131);
INSERT INTO Aluno (id_pessoa) VALUES (1132); 
INSERT INTO Aluno (id_pessoa) VALUES (1133);
INSERT INTO Aluno (id_pessoa) VALUES (1134);
INSERT INTO Aluno (id_pessoa) VALUES (1135);
INSERT INTO Aluno (id_pessoa) VALUES (1136);
INSERT INTO Aluno (id_pessoa) VALUES (1137); 
INSERT INTO Aluno (id_pessoa) VALUES (1138);
INSERT INTO Aluno (id_pessoa) VALUES (1139);
INSERT INTO Aluno (id_pessoa) VALUES (1140);
INSERT INTO Aluno (id_pessoa) VALUES (1141); 
INSERT INTO Aluno (id_pessoa) VALUES (1142);
INSERT INTO Aluno (id_pessoa) VALUES (1143);
INSERT INTO Aluno (id_pessoa) VALUES (1144);
INSERT INTO Aluno (id_pessoa) VALUES (1145);
INSERT INTO Aluno (id_pessoa) VALUES (1146); 
INSERT INTO Aluno (id_pessoa) VALUES (1147);


-- 7. Contato de Emergência de cada aluno cadastrado:
INSERT INTO Contatos_Emergencia_Alunos VALUES (1114, 'Cesar Ismael da Silva', TO_DATE('1970-04-12','YYYY-MM-DD'), 'Pai');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1116, 'Carlos Resende Toscano', TO_DATE('1970-04-12','YYYY-MM-DD'), 'Pai');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1120, 'Ana Fernandes da Silva', TO_DATE('1978-09-03','YYYY-MM-DD'), 'Mãe');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1121, 'José Alves de Souza', TO_DATE('1969-11-25','YYYY-MM-DD'), 'Pai');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1122, 'Claudia Pereira Lima', TO_DATE('1975-02-18','YYYY-MM-DD'), 'Mãe');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1123, 'Roberto Gomes Rodrigues', TO_DATE('1972-06-30','YYYY-MM-DD'), 'Pai');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1124, 'Lucia Henrique da Costa', TO_DATE('1980-01-14','YYYY-MM-DD'), 'Mãe');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1125, 'Fernando Martins Ferreira', TO_DATE('1968-08-22','YYYY-MM-DD'), 'Pai');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1126, 'Marcia Souza Carvalho', TO_DATE('1976-12-05','YYYY-MM-DD'), 'Mãe');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1127, 'Antonio Oliveira Santos', TO_DATE('1965-03-09','YYYY-MM-DD'), 'Pai');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1128, 'Sandra Barbosa de Andrade', TO_DATE('1979-07-17','YYYY-MM-DD'), 'Mãe');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1129, 'Paulo Ribeiro Fernandes', TO_DATE('1971-10-28','YYYY-MM-DD'), 'Pai');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1130, 'Helena Henrique Lopes', TO_DATE('1982-05-06','YYYY-MM-DD'), 'Mãe');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1131, 'João Nunes da Silva', TO_DATE('1967-01-19','YYYY-MM-DD'), 'Pai');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1132, 'Rita Rocha Cavalcante', TO_DATE('1974-09-11','YYYY-MM-DD'), 'Mãe');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1133, 'Alberto Alves Monteiro', TO_DATE('1966-04-03','YYYY-MM-DD'), 'Pai');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1134, 'Luciana Souza Ribeiro', TO_DATE('1977-08-21','YYYY-MM-DD'), 'Mãe');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1135, 'Ricardo Lima Batista', TO_DATE('1970-12-15','YYYY-MM-DD'), 'Pai');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1136, 'Beatriz Gomes de Oliveira', TO_DATE('1981-06-27','YYYY-MM-DD'), 'Mãe');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1137, 'Carlos Martins Costa', TO_DATE('1969-02-08','YYYY-MM-DD'), 'Pai');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1138, 'Patricia Ferreira Duarte', TO_DATE('1978-11-30','YYYY-MM-DD'), 'Mãe');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1139, 'Eduardo Nunes Barros', TO_DATE('1973-03-19','YYYY-MM-DD'), 'Pai');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1140, 'Marta Mendes de Albuquerque', TO_DATE('1980-07-12','YYYY-MM-DD'), 'Mãe');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1141, 'Roberto Henrique Teixeira', TO_DATE('1965-05-25','YYYY-MM-DD'), 'Pai');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1142, 'Angela Barbosa Freitas', TO_DATE('1976-10-09','YYYY-MM-DD'), 'Mãe');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1143, 'Jose Cardoso da Silva', TO_DATE('1968-09-14','YYYY-MM-DD'), 'Pai');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1144, 'Claudia Andrade Lima', TO_DATE('1975-01-07','YYYY-MM-DD'), 'Mãe');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1145, 'Marcos Rocha dos Santos', TO_DATE('1972-04-26','YYYY-MM-DD'), 'Pai');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1146, 'Silvia Pereira Cavalcante', TO_DATE('1981-12-18','YYYY-MM-DD'), 'Mãe');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1147, 'Fernando Alves Rodrigues', TO_DATE('1967-06-02','YYYY-MM-DD'), 'Pai');

-- 8. Tipos de Planos que cada Unidade possui:
-- 8.1 Smartfit:
INSERT INTO Plano VALUES (5555, 'Plano Semestral', 649.00 , '6 meses'); 
INSERT INTO Plano VALUES (5556, 'Plano Anual', 1200.00, '1 ano');     
INSERT INTO Plano VALUES (5557, 'Plano Trimestral', 350.00, '3 meses');
INSERT INTO Plano VALUES (5558, 'Plano Mensal', 150.00, '30 dias');

-- 8.2 Selfit:
INSERT INTO Plano VALUES (5559, 'Plano Semestral', 749.00 , '6 meses'); 
INSERT INTO Plano VALUES (5560, 'Plano Anual', 1400.00, '1 ano');     
INSERT INTO Plano VALUES (5561, 'Plano Trimestral', 450.00, '3 meses');
INSERT INTO Plano VALUES (5562, 'Plano Mensal', 350.00, '30 dias');

-- 9. O que cada unidade pode oferecer uma vez que vc fez um plano:

-- 9.1 Smartfit
INSERT INTO Oferece VALUES (10, 5555, 'musculação, dança e lutas');
INSERT INTO Oferece VALUES (10, 5556, 'musculação, dança e lutas');
INSERT INTO Oferece VALUES (10, 5557, 'musculação, dança e lutas');
INSERT INTO Oferece VALUES (10, 5558, 'musculação, dança e lutas');

-- 9.2 Selfit(sem dança):
INSERT INTO Oferece VALUES (20, 5559, 'musculação e lutas');
INSERT INTO Oferece VALUES (20, 5560, 'musculação e lutas');
INSERT INTO Oferece VALUES (20, 5561, 'musculação e lutas');
INSERT INTO Oferece VALUES (20, 5562, 'musculação e lutas');



-- 10. Matriculas referentes ao Alunos cadastrados (Plano_Aluno_Unidade):
INSERT INTO Matricula VALUES (6000, 1114, 10, 5555, 'ativo', TO_DATE('2026-06-02', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6001, 1116, 10, 5556, 'ativo', TO_DATE('2024-05-04', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6002, 1120, 10, 5557, 'ativo', TO_DATE('2024-04-06', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6003, 1121, 10, 5558, 'ativo', TO_DATE('2023-03-08', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6004, 1122, 10, 5558, 'ativo', TO_DATE('2026-02-10', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6005, 1123, 10, 5555, 'ativo', TO_DATE('2025-01-12', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6006, 1124, 10, 5557, 'ativo', TO_DATE('2024-12-14', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6007, 1125, 10, 5555, 'ativo', TO_DATE('2023-11-16', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6008, 1126, 10, 5556, 'ativo', TO_DATE('2022-10-18', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6009, 1127, 10, 5558, 'ativo', TO_DATE('2021-09-20', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6010, 1128, 10, 5558, 'ativo', TO_DATE('2020-08-22', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6011, 1129, 10, 5555, 'ativo', TO_DATE('2026-07-24', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6012, 1130, 10, 5558, 'ativo', TO_DATE('2025-06-26', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6013, 1131, 10, 5557, 'ativo', TO_DATE('2025-05-02', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6014, 1132, 10, 5555, 'ativo', TO_DATE('2025-04-04', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6015, 1133, 20, 5559, 'ativo', TO_DATE('2024-03-07', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6016, 1134, 20, 5560, 'ativo', TO_DATE('2024-02-08', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6017, 1135, 20, 5560, 'ativo', TO_DATE('2025-01-09', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6018, 1136, 20, 5561, 'ativo', TO_DATE('2023-04-15', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6019, 1137, 20, 5562, 'ativo', TO_DATE('2023-10-16', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6020, 1138, 20, 5562, 'ativo', TO_DATE('2026-10-17', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6021, 1139, 20, 5561, 'ativo', TO_DATE('2026-12-18', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6022, 1140, 20, 5561, 'ativo', TO_DATE('2026-11-13', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6023, 1141, 20, 5560, 'ativo', TO_DATE('2025-09-12', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6024, 1142, 20, 5559, 'ativo', TO_DATE('2025-08-11', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6025, 1143, 20, 5559, 'ativo', TO_DATE('2026-07-10', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6026, 1144, 20, 5560, 'ativo', TO_DATE('2023-06-04', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6027, 1145, 20, 5561, 'ativo', TO_DATE('2024-05-02', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6028, 1146, 20, 5562, 'ativo', TO_DATE('2025-04-01', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6029, 1147, 20, 5562, 'ativo', TO_DATE('2026-03-05', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6030, 1114, 10, 5555, 'inativo', TO_DATE('2022-01-10', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6031, 1116, 10, 5556, 'inativo', TO_DATE('2021-03-15', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6032, 1120, 10, 5557, 'ativo', TO_DATE('2025-02-20', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6033, 1121, 10, 5558, 'inativo', TO_DATE('2020-07-08', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6034, 1122, 10, 5558, 'ativo', TO_DATE('2024-11-01', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6035, 1133, 20, 5559, 'inativo', TO_DATE('2021-05-14', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6036, 1134, 20, 5560, 'ativo', TO_DATE('2025-01-30', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6037, 1135, 20, 5560, 'inativo', TO_DATE('2022-09-09', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6038, 1136, 20, 5561, 'ativo', TO_DATE('2026-02-12', 'YYYY-MM-DD'));
INSERT INTO Matricula VALUES (6039, 1137, 20, 5562, 'inativo', TO_DATE('2019-12-25', 'YYYY-MM-DD'));




-- 11. Mapeamento de frequencia de cada aluno para uma Unidade:

INSERT INTO Frequenta (data_acesso, id_aluno, id_unidade)
SELECT data_inicio, id_aluno, id_unidade
FROM Matricula;




-- 12.: MBM(Movimentações Bancárias Mensais):

-- 12.1 remuneração
INSERT INTO MBM VALUES (9000, TO_DATE('2026-01-02','YYYY-MM-DD'), 3100.00, 'pago'); 
INSERT INTO MBM VALUES (9001, TO_DATE('2026-01-03','YYYY-MM-DD'), 4100.00, 'pago'); 
INSERT INTO MBM VALUES (9002, TO_DATE('2026-01-14','YYYY-MM-DD'), 2200.00, 'pago'); 
INSERT INTO MBM VALUES (9003, TO_DATE('2026-01-15','YYYY-MM-DD'), 1900.00, 'pago'); 
INSERT INTO MBM VALUES (9004, TO_DATE('2026-01-17','YYYY-MM-DD'), 700.00, 'pago'); 
INSERT INTO MBM VALUES (9005, TO_DATE('2026-02-16','YYYY-MM-DD'), 2900.00, 'pago'); 
INSERT INTO MBM VALUES (9006, TO_DATE('2026-02-18','YYYY-MM-DD'), 3900.00, 'pago'); 
INSERT INTO MBM VALUES (9007, TO_DATE('2026-02-19','YYYY-MM-DD'), 2000.00, 'pago'); 
INSERT INTO MBM VALUES (9008, TO_DATE('2026-02-20','YYYY-MM-DD'), 1700.00, 'pago'); 
INSERT INTO MBM VALUES (9009, TO_DATE('2026-02-28','YYYY-MM-DD'), 500.00, 'pago');

-- 12.2 mensalidades
INSERT INTO MBM VALUES (9010, TO_DATE('2026-03-01','YYYY-MM-DD'), 649.00, 'pago');
INSERT INTO MBM VALUES (9011, TO_DATE('2026-03-02','YYYY-MM-DD'), 1200.00, 'pago');
INSERT INTO MBM VALUES (9012, TO_DATE('2026-03-03','YYYY-MM-DD'), 350.00, 'pago');
INSERT INTO MBM VALUES (9013, TO_DATE('2026-03-04','YYYY-MM-DD'), 150.00, 'pago');
INSERT INTO MBM VALUES (9014, TO_DATE('2026-03-05','YYYY-MM-DD'), 150.00, 'pago');
INSERT INTO MBM VALUES (9015, TO_DATE('2026-03-06','YYYY-MM-DD'), 649.00, 'pago');
INSERT INTO MBM VALUES (9016, TO_DATE('2026-03-07','YYYY-MM-DD'), 350.00, 'pago');
INSERT INTO MBM VALUES (9017, TO_DATE('2026-03-08','YYYY-MM-DD'), 649.00, 'pago');
INSERT INTO MBM VALUES (9018, TO_DATE('2026-03-09','YYYY-MM-DD'), 1200.00, 'pago');
INSERT INTO MBM VALUES (9019, TO_DATE('2026-03-10','YYYY-MM-DD'), 150.00, 'pago');
INSERT INTO MBM VALUES (9020, TO_DATE('2026-03-11','YYYY-MM-DD'), 150.00, 'pago');
INSERT INTO MBM VALUES (9021, TO_DATE('2026-03-12','YYYY-MM-DD'), 649.00, 'pago');
INSERT INTO MBM VALUES (9022, TO_DATE('2026-03-13','YYYY-MM-DD'), 150.00, 'pago');
INSERT INTO MBM VALUES (9023, TO_DATE('2026-03-14','YYYY-MM-DD'), 350.00, 'pago');
INSERT INTO MBM VALUES (9024, TO_DATE('2026-03-15','YYYY-MM-DD'), 649.00, 'pago');
INSERT INTO MBM VALUES (9025, TO_DATE('2026-03-16','YYYY-MM-DD'), 749.00, 'pago');
INSERT INTO MBM VALUES (9026, TO_DATE('2026-03-17','YYYY-MM-DD'), 1400.00, 'pago');
INSERT INTO MBM VALUES (9027, TO_DATE('2026-03-18','YYYY-MM-DD'), 1400.00, 'pago');
INSERT INTO MBM VALUES (9028, TO_DATE('2026-03-19','YYYY-MM-DD'), 450.00, 'pago');
INSERT INTO MBM VALUES (9029, TO_DATE('2026-03-20','YYYY-MM-DD'), 350.00, 'pago');
INSERT INTO MBM VALUES (9030, TO_DATE('2022-01-15','YYYY-MM-DD'), 649.00, 'pago');
INSERT INTO MBM VALUES (9031, TO_DATE('2021-03-20','YYYY-MM-DD'), 1200.00, 'pago');
INSERT INTO MBM VALUES (9032, TO_DATE('2025-02-25','YYYY-MM-DD'), 350.00, 'pago');
INSERT INTO MBM VALUES (9033, TO_DATE('2020-07-12','YYYY-MM-DD'), 150.00, 'pago');
INSERT INTO MBM VALUES (9034, TO_DATE('2024-11-05','YYYY-MM-DD'), 150.00, 'pago');
INSERT INTO MBM VALUES (9035, TO_DATE('2021-05-20','YYYY-MM-DD'), 749.00, 'pago');
INSERT INTO MBM VALUES (9036, TO_DATE('2025-02-03','YYYY-MM-DD'), 1400.00, 'pago');
INSERT INTO MBM VALUES (9037, TO_DATE('2022-09-15','YYYY-MM-DD'), 1400.00, 'pago');
INSERT INTO MBM VALUES (9038, TO_DATE('2026-02-18','YYYY-MM-DD'), 450.00, 'pago');
INSERT INTO MBM VALUES (9039, TO_DATE('2020-01-03','YYYY-MM-DD'), 350.00, 'pago');


-- Mensalidade paga por cada Aluno :
INSERT INTO Mensalidade VALUES (9010, 6000);
INSERT INTO Mensalidade VALUES (9011, 6001);
INSERT INTO Mensalidade VALUES (9012, 6002);
INSERT INTO Mensalidade VALUES (9013, 6003);
INSERT INTO Mensalidade VALUES (9014, 6004);
INSERT INTO Mensalidade VALUES (9015, 6005);
INSERT INTO Mensalidade VALUES (9016, 6006);
INSERT INTO Mensalidade VALUES (9017, 6007);
INSERT INTO Mensalidade VALUES (9018, 6008);
INSERT INTO Mensalidade VALUES (9019, 6009);
INSERT INTO Mensalidade VALUES (9020, 6010);
INSERT INTO Mensalidade VALUES (9021, 6011);
INSERT INTO Mensalidade VALUES (9022, 6012);
INSERT INTO Mensalidade VALUES (9023, 6013);
INSERT INTO Mensalidade VALUES (9024, 6014);
INSERT INTO Mensalidade VALUES (9025, 6015);
INSERT INTO Mensalidade VALUES (9026, 6016);
INSERT INTO Mensalidade VALUES (9027, 6017);
INSERT INTO Mensalidade VALUES (9028, 6018);
INSERT INTO Mensalidade VALUES (9029, 6019);
INSERT INTO Mensalidade VALUES (9030, 6030);
INSERT INTO Mensalidade VALUES (9031, 6031);
INSERT INTO Mensalidade VALUES (9032, 6032);
INSERT INTO Mensalidade VALUES (9033, 6033);
INSERT INTO Mensalidade VALUES (9034, 6034);
INSERT INTO Mensalidade VALUES (9035, 6035);
INSERT INTO Mensalidade VALUES (9036, 6036);
INSERT INTO Mensalidade VALUES (9037, 6037);
INSERT INTO Mensalidade VALUES (9038, 6038);
INSERT INTO Mensalidade VALUES (9039, 6039);

-- Remuneração dos colaboradores da academia :
INSERT INTO Remuneração VALUES (9000, 1113); -- Anysabele
INSERT INTO Remuneração VALUES (9001, 1119); -- Jairo
INSERT INTO Remuneração VALUES (9002, 1117); -- Julio
INSERT INTO Remuneração VALUES (9003, 1111); -- Dyego
INSERT INTO Remuneração VALUES (9004, 1115); -- Vinicius

INSERT INTO Remuneração VALUES (9005, 1148); -- Professor Selfit
INSERT INTO Remuneração VALUES (9006, 1149); -- Personal
INSERT INTO Remuneração VALUES (9007, 1150); -- Recepcionista
INSERT INTO Remuneração VALUES (9008, 1151); -- Zelador
INSERT INTO Remuneração VALUES (9009, 1152); -- Estagiário

-- 12. Avaliações realizadas por cada aluno cadastrado:

INSERT INTO Avaliação_Aluno VALUES (1000, 1114, 1113, 'Hipertrofia', TO_DATE('01-01-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1001, 1116, 1113, 'Emagrecimento', TO_DATE('02-01-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1002, 1120, 1113, 'Condicionamento físico', TO_DATE('03-01-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1003, 1121, 1113, 'Ganho de massa', TO_DATE('04-01-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1004, 1122, 1113, 'Definição muscular', TO_DATE('05-01-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1005, 1123, 1113, 'Força e resistência', TO_DATE('06-01-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1006, 1124, 1113, 'Hipertrofia leve', TO_DATE('07-01-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1007, 1125, 1113, 'Redução de gordura', TO_DATE('08-01-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1008, 1126, 1113, 'Condicionamento geral', TO_DATE('09-01-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1009, 1127, 1113, 'Resistência aeróbica', TO_DATE('10-01-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1010, 1128, 1113, 'Força muscular', TO_DATE('11-01-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1011, 1129, 1113, 'Hipertrofia avançada', TO_DATE('12-01-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1012, 1130, 1113, 'Definição muscular', TO_DATE('13-01-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1013, 1131, 1113, 'Condicionamento físico', TO_DATE('14-01-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1014, 1132, 1113, 'Ganho de massa', TO_DATE('15-01-2026','DD-MM-YYYY'));

INSERT INTO Avaliação_Aluno VALUES (1015, 1133, 1148, 'Hipertrofia', TO_DATE('01-02-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1016, 1134, 1148, 'Emagrecimento', TO_DATE('02-02-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1017, 1135, 1148, 'Resistência', TO_DATE('03-02-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1018, 1136, 1148, 'Reabilitação', TO_DATE('04-02-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1019, 1137, 1148, 'Condicionamento', TO_DATE('05-02-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1020, 1138, 1148, 'Força explosiva', TO_DATE('06-02-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1021, 1139, 1148, 'Hipertrofia avançada', TO_DATE('07-02-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1022, 1140, 1148, 'Emagrecimento intenso', TO_DATE('08-02-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1023, 1141, 1148, 'Condicionamento geral', TO_DATE('09-02-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1024, 1142, 1148, 'Resistência muscular', TO_DATE('10-02-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1025, 1143, 1148, 'Ganho de massa', TO_DATE('11-02-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1026, 1144, 1148, 'Definição corporal', TO_DATE('12-02-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1027, 1145, 1148, 'Condicionamento físico', TO_DATE('13-02-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1028, 1146, 1148, 'Hipertrofia leve', TO_DATE('14-02-2026','DD-MM-YYYY'));
INSERT INTO Avaliação_Aluno VALUES (1029, 1147, 1148, 'Força e resistência', TO_DATE('15-02-2026','DD-MM-YYYY'));


-- Treinos passados para cada aluno:

INSERT INTO Treino VALUES (2000, 'Treino A: Peito e tríceps', 1000);
INSERT INTO Treino VALUES (2001, 'Treino B: Costas e bíceps', 1001);
INSERT INTO Treino VALUES (2002, 'Treino C: Pernas completas', 1002);
INSERT INTO Treino VALUES (2003, 'Treino D: Ombros e abdômen', 1003);
INSERT INTO Treino VALUES (2004, 'Treino E: Full body', 1004);
INSERT INTO Treino VALUES (2005, 'Treino força básica', 1005);
INSERT INTO Treino VALUES (2006, 'Treino hipertrofia leve', 1006);
INSERT INTO Treino VALUES (2007, 'Treino queima de gordura', 1007);
INSERT INTO Treino VALUES (2008, 'Treino funcional geral', 1008);
INSERT INTO Treino VALUES (2009, 'Treino cardio avançado', 1009);
INSERT INTO Treino VALUES (2010, 'Treino força máxima', 1010);
INSERT INTO Treino VALUES (2011, 'Treino hipertrofia avançada', 1011);
INSERT INTO Treino VALUES (2012, 'Treino definição', 1012);
INSERT INTO Treino VALUES (2013, 'Treino resistência', 1013);
INSERT INTO Treino VALUES (2014, 'Treino massa muscular', 1014);
INSERT INTO Treino VALUES (2015, 'Treino hipertrofia', 1015);
INSERT INTO Treino VALUES (2016, 'Treino emagrecimento', 1016);
INSERT INTO Treino VALUES (2017, 'Treino resistência', 1017);
INSERT INTO Treino VALUES (2018, 'Treino reabilitação', 1018);
INSERT INTO Treino VALUES (2019, 'Treino condicionamento', 1019);
INSERT INTO Treino VALUES (2020, 'Treino explosão muscular', 1020);
INSERT INTO Treino VALUES (2021, 'Treino hipertrofia avançada', 1021);
INSERT INTO Treino VALUES (2022, 'Treino emagrecimento intenso', 1022);
INSERT INTO Treino VALUES (2023, 'Treino funcional', 1023);
INSERT INTO Treino VALUES (2024, 'Treino resistência muscular', 1024);
INSERT INTO Treino VALUES (2025, 'Treino massa', 1025);
INSERT INTO Treino VALUES (2026, 'Treino definição corporal', 1026);
INSERT INTO Treino VALUES (2027, 'Treino geral fitness', 1027);
INSERT INTO Treino VALUES (2028, 'Treino hipertrofia leve', 1028);
INSERT INTO Treino VALUES (2029, 'Treino força e resistência', 1029);

COMMIT;