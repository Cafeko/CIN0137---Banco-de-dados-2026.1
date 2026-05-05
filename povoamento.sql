-- script do povoamento --

-- 1. Endereços:
INSERT INTO Endereços VALUES ('50740-000', 'Brasil', 'PE', 'Recife', 'Várzea', 'Av. Acadêmico Hélio Ramos');
INSERT INTO Endereços VALUES ('51020-000', 'Brasil', 'PE', 'Recife', 'Boa Viagem', 'Avenida Boa Viagem');
INSERT INTO Endereços VALUES ('52010-000', 'Brasil', 'PE', 'Recife', 'Derby', 'Praça do Derby');
INSERT INTO Endereços VALUES ('53010-000', 'Brasil', 'PE', 'Olinda', 'Tabajara', 'Alto da Bondade');
INSERT INTO Endereços VALUES ('54730-420', 'Brasil', 'PE', 'Camaragibe', 'Centro', 'Rua Principal');

-- 2. Unidade:
INSERT INTO Unidade VALUES (Unidade_id.NEXTVAL, 'Unidade Norte', '54730-420', '111'); -- 1000
INSERT INTO Unidade VALUES (Unidade_id.NEXTVAL, 'Unidade Sul', '51020-000', '122');   -- 1001

-- 3. Pessoas: 
INSERT INTO Pessoa VALUES (Pessoa_id.NEXTVAL, 'Dyego Ferreira da Silva', TO_DATE('2002-03-10','YYYY-MM-DD'), '111.222.333-44', '50740-000', '10', 'A'); -- 1000
INSERT INTO Pessoa VALUES (Pessoa_id.NEXTVAL, 'Anysabele de Paula Barbosa Santos', TO_DATE('2004-07-22','YYYY-MM-DD'), '222.333.444-55', '51020-000', '20', 'Apto 101'); -- 1001
INSERT INTO Pessoa VALUES (Pessoa_id.NEXTVAL, 'Caio Ferreira Gomes da Silva', TO_DATE('2000-05-15','YYYY-MM-DD'), '333.444.555-66', '52010-000', '30', 'B'); -- 1002
INSERT INTO Pessoa VALUES (Pessoa_id.NEXTVAL, 'Júlio Cesar da Silva', TO_DATE('2002-01-12','YYYY-MM-DD'), '444.555.666-77', '50740-000', '40', 'Bloco B'); -- 1003
INSERT INTO Pessoa VALUES (Pessoa_id.NEXTVAL, 'Jairo Cândido Gonzaga Neto', TO_DATE('1996-01-25','YYYY-MM-DD'), '555.666.777-88', '51020-000', '50', 'C'); -- 1004
INSERT INTO Pessoa VALUES (Pessoa_id.NEXTVAL, 'Vinicius guedes de macedo', TO_DATE('1994-11-30','YYYY-MM-DD'), '666.777.888-99', '52010-000', '60', NULL); -- 1005

-- 4. Telefones:
INSERT INTO Telefone VALUES (1003, '(81) 9 88887777'); -- Júlio
INSERT INTO Telefone VALUES (1002, '(81) 9 47455556'); -- Caio
INSERT INTO Telefone VALUES (1000, '(81) 9 82990015'); -- Dyego

-- 5. Colaborador e Professor:
INSERT INTO Colaborador VALUES (1000, 'Professor Coordenador', 2900.00, NULL, 1000, TO_DATE('10/01/2024', 'DD/MM/YYYY'));
INSERT INTO Professor VALUES (1000);
INSERT INTO Colaborador VALUES (1001, 'Instrutora Senior', 4100.00, 1000, 1000, TO_DATE('12/05/2020', 'DD/MM/YYYY'));
INSERT INTO Professor VALUES (1001);

-- 6. Alunos:
INSERT INTO Aluno VALUES (1002);
INSERT INTO Aluno VALUES (1003); 
INSERT INTO Aluno VALUES (1004);
INSERT INTO Aluno VALUES (1005);

-- 7. Contato de Emergência:
INSERT INTO Contatos_Emergencia_Alunos VALUES (1003, 'Maria da Silva', TO_DATE('1988-05-10','YYYY-MM-DD'), 'Mãe');
INSERT INTO Contatos_Emergencia_Alunos VALUES (1002, 'Zezinho do Boi', TO_DATE('1975-08-20','YYYY-MM-DD'), 'Avô');

-- 8. Plano:
INSERT INTO Plano VALUES (Plano_id.NEXTVAL, 'Plano Semestral', 649.00 , '6 meses'); -- 1000
INSERT INTO Plano VALUES (Plano_id.NEXTVAL, 'Plano Anual', 1200.00, '1 ano');     -- 1001
INSERT INTO Plano VALUES (Plano_id.NEXTVAL, 'Plano Trimestral', 350.00, '3 meses');
INSERT INTO Plano VALUES (Plano_id.NEXTVAL, 'Plano Mensal', 150.00, '30 dias');

-- Oferece:
INSERT INTO Oferece VALUES (1000, 1000, 'Acesso total, musculação e aulas coletivas');
INSERT INTO Oferece VALUES (1001, 1001, 'Acesso total + 1 avaliação mensal grátis');

-- 9. Matriculas e acesso:
INSERT INTO Matricula VALUES (Matricula_id.NEXTVAL, 1003, 1000, 1000, 'ativo', TO_DATE('02/03/2026', 'DD/MM/YYYY'));
INSERT INTO Frequenta VALUES (TO_DATE('2026-05-03','YYYY-MM-DD'), 1003, 1000);
INSERT INTO Frequenta VALUES (TO_DATE('2022-08-20','YYYY-MM-DD'), 1003, 1000);

-- 10. MBM e Mensalidades:
-- Pagamento do mês passado:
INSERT INTO MBM VALUES (MBM_id.NEXTVAL, TO_DATE('2026-04-02','YYYY-MM-DD'), 150.00, 'pago'); -- 1000
INSERT INTO Mensalidade VALUES (1000, 1000, 1003, 1000);

-- Pagamento deste mês:
INSERT INTO MBM VALUES (MBM_id.NEXTVAL, TO_DATE('2026-05-02','YYYY-MM-DD'), 150.00, 'pago'); -- 1001
INSERT INTO Mensalidade VALUES (1001, 1000, 1003, 1000);

-- 11. Avaliações e Treinos:
INSERT INTO Avaliação_Aluno VALUES (Avaliação_Aluno_id.NEXTVAL, 1003, 1000, 'Redução de BF e ganho de massa', TO_DATE('25/04/2026','DD/MM/YYYY'));

INSERT INTO Treino VALUES (Treino_id.NEXTVAL, 'Treino A (Peito/Tríceps): Supino 4x10, CrossOver 3x12', 1000, 1003, 1000);
INSERT INTO Treino VALUES (Treino_id.NEXTVAL, 'Treino B (Costas/Bíceps): Puxada Alta 4x10, Rosca Direta 3x12', 1000, 1003, 1000);

COMMIT;