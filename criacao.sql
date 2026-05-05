-- Equipe 2 --
/* Dyego Ferreira da Silva            - dfs10
Caio Ferreira Gomes da Silva       - cfgs
Júlio Cesar da SIlva                - jcs8
Anysabele de Paula Barbosa Santos  - apbs2
Jairo Cândido Gonzaga Neto         - jcgn
Vinicius guedes de macedo          - Vgm
*/

-- Script de criação dos sistema de Franquia de academia

-- Limpa Banco de dados:

-- DROP TABLE:
DROP TABLE Treino CASCADE CONSTRAINTS;
DROP TABLE Avaliação_Aluno CASCADE CONSTRAINTS;
DROP TABLE Remuneração CASCADE CONSTRAINTS;
DROP TABLE Mensalidade CASCADE CONSTRAINTS;
DROP TABLE MBM CASCADE CONSTRAINTS;
DROP TABLE Matricula CASCADE CONSTRAINTS;
DROP TABLE Oferece CASCADE CONSTRAINTS;
DROP TABLE Plano CASCADE CONSTRAINTS;
DROP TABLE Atende CASCADE CONSTRAINTS;
DROP TABLE Frequenta CASCADE CONSTRAINTS;
DROP TABLE Contatos_Emergencia_Alunos CASCADE CONSTRAINTS;
DROP TABLE Aluno CASCADE CONSTRAINTS;
DROP TABLE Professor CASCADE CONSTRAINTS;
DROP TABLE Funcionario CASCADE CONSTRAINTS;
DROP TABLE Colaborador CASCADE CONSTRAINTS;
DROP TABLE Unidade CASCADE CONSTRAINTS;
DROP TABLE Telefone CASCADE CONSTRAINTS;
DROP TABLE Pessoa CASCADE CONSTRAINTS;
DROP TABLE Endereços CASCADE CONSTRAINTS;

-- DROP SEQUENCES:
DROP SEQUENCE Treino_id;
DROP SEQUENCE Avaliação_Aluno_id;
DROP SEQUENCE MBM_id;
DROP SEQUENCE Matricula_id;
DROP SEQUENCE Plano_id;
DROP SEQUENCE Unidade_id;
DROP SEQUENCE Pessoa_id;

-- Endereço
CREATE TABLE Endereços (
    cep VARCHAR2(9),
    país VARCHAR2(50),
    estado VARCHAR2(50),
    cidade VARCHAR2(50),
    bairro VARCHAR2(50),
    rua VARCHAR2(80),
    CONSTRAINT Endereços_pkey PRIMARY KEY (cep)
);

-- Pessoa
CREATE TABLE Pessoa (
    id integer,
    nome VARCHAR2(50),
    data_nasc DATE,
    cpf VARCHAR2(14), -- Aumentado para suportar máscara 000.000.000-00
    cep VARCHAR2(9),
    numero VARCHAR2(5),
    complemento VARCHAR2(50),
    CONSTRAINT Pessoa_pkey PRIMARY KEY (id),
    CONSTRAINT Pessoa_fkey FOREIGN KEY (cep) REFERENCES Endereços (cep)
);

CREATE SEQUENCE Pessoa_id INCREMENT BY 1 START WITH 1000;

-- Telefone
CREATE TABLE Telefone (
    id_pessoa integer,
    telefone VARCHAR2(20), -- Aumentado para suportar máscara (81) 9 ...
    CONSTRAINT Telefone_pkeys PRIMARY KEY (id_pessoa, telefone),
    CONSTRAINT TELEFONE_fkey FOREIGN KEY (id_pessoa) REFERENCES Pessoa (id)
);

-- Unidade
CREATE TABLE Unidade (
    id_unidade integer,
    nome_unidade VARCHAR2(50),
    cep VARCHAR2(9),
    numero VARCHAR2(5),
    CONSTRAINT Unidade_pkey PRIMARY KEY (id_unidade),
    CONSTRAINT Unidade_fkey FOREIGN KEY (cep) REFERENCES Endereços (cep)
);

CREATE SEQUENCE Unidade_id INCREMENT BY 1 START WITH 1000;

-- Colaborador
CREATE TABLE Colaborador (
    id_pessoa integer,
    cargo VARCHAR2(50),
    salario DECIMAL(10,2),
    id_supervisor integer,
    unidade_alocado integer,
    data_alocação DATE,
    CONSTRAINT Colaborador_pkey PRIMARY KEY (id_pessoa),
    CONSTRAINT Colaborador_fkey1 FOREIGN KEY (id_pessoa) REFERENCES Pessoa (id),
    CONSTRAINT Colaborador_fkey2 FOREIGN KEY (id_supervisor) REFERENCES Colaborador (id_pessoa),
    CONSTRAINT Colaborador_fkey3 FOREIGN KEY (unidade_alocado) REFERENCES Unidade (id_unidade)
);

-- Funcionário
CREATE TABLE Funcionario (
    id_colaborador integer,
    CONSTRAINT Funcionario_pkey PRIMARY KEY (id_colaborador),
    CONSTRAINT Funcionario_fkey FOREIGN KEY (id_colaborador) REFERENCES Colaborador (id_pessoa)
);

-- Professor
CREATE TABLE Professor (
    id_colaborador integer,
    CONSTRAINT Professor_pkey PRIMARY KEY (id_colaborador),
    CONSTRAINT Professor_fkey FOREIGN KEY (id_colaborador) REFERENCES Colaborador (id_pessoa)
);

-- Aluno
CREATE TABLE Aluno (
    id_pessoa integer,
    CONSTRAINT Alumo_pkey PRIMARY KEY (id_pessoa),
    CONSTRAINT Alumo_fkey FOREIGN KEY (id_pessoa) REFERENCES Pessoa (id)
);

-- Contatos de Emergencia Alunos
CREATE TABLE Contatos_Emergencia_Alunos (
    id_aluno integer,
    nome_contato VARCHAR2(50),
    data_nasc DATE,
    parentesco VARCHAR2(50),
    CONSTRAINT CEM_pkeys PRIMARY KEY (id_aluno, nome_contato),
    CONSTRAINT CEM_fkey FOREIGN KEY (id_aluno) REFERENCES Aluno (id_pessoa)
);

-- Frequenta
CREATE TABLE Frequenta (
    data_acesso DATE,
    id_aluno integer,
    id_unidade integer,
    CONSTRAINT Frequenta_pkeys PRIMARY KEY (data_acesso, id_aluno, id_unidade),
    CONSTRAINT Frequenta_fkey1 FOREIGN KEY (id_aluno) REFERENCES Aluno (id_pessoa),
    CONSTRAINT Frequenta_fkey2 FOREIGN KEY (id_unidade) REFERENCES Unidade (id_unidade)
);

-- Atende
CREATE TABLE Atende (
    id_aluno integer,
    id_funcionario integer,
    CONSTRAINT Atende_pkeys PRIMARY KEY (id_aluno, id_funcionario),
    CONSTRAINT Atende_fkey1 FOREIGN KEY (id_aluno) REFERENCES Aluno (id_pessoa),
    CONSTRAINT Atende_fkey2 FOREIGN KEY (id_funcionario) REFERENCES Funcionario (id_colaborador)
);

-- Plano
CREATE TABLE Plano (
    id_plano integer,
    nome VARCHAR2(50),
    valor DECIMAL(10,2),
    duração VARCHAR2(20), -- Aumentado para suportar '6 meses', '1 ano'
    CONSTRAINT Plano_pkey PRIMARY KEY (id_plano)
);

CREATE SEQUENCE Plano_id INCREMENT BY 1 START WITH 1000;

-- Oferece
CREATE TABLE Oferece (
    id_unidade integer,
    id_plano integer,
    beneficios VARCHAR2(50),
    CONSTRAINT Oferece_pkeys PRIMARY KEY (id_unidade, id_plano),
    CONSTRAINT Oferece_fkey1 FOREIGN KEY (id_unidade) REFERENCES Unidade (id_unidade),
    CONSTRAINT Oferece_fkey2 FOREIGN KEY (id_plano) REFERENCES Plano (id_plano)
);

-- Matricula (Plano_Aluno_Unidade)
CREATE TABLE Matricula (
    id_matricula integer,
    id_aluno integer,
    id_unidade integer,
    id_plano integer,
    status_matricula VARCHAR2(10),
    data_inicio DATE,
    CHECK (status_matricula IN ('ativo', 'inativo')),
    CONSTRAINT Matricula_pkeys PRIMARY KEY (id_matricula, id_aluno, id_unidade),
    CONSTRAINT Matricula_fkey1 FOREIGN KEY (id_aluno) REFERENCES Aluno (id_pessoa),
    CONSTRAINT Matricula_fkey2 FOREIGN KEY (id_unidade) REFERENCES Unidade (id_unidade),
    CONSTRAINT Matricula_fkey3 FOREIGN KEY (id_plano) REFERENCES Plano (id_plano)
);

CREATE SEQUENCE Matricula_id INCREMENT BY 1 START WITH 1000;

-- Movimentações Bancárias Mensais
CREATE TABLE MBM (
    id_pagamento integer,
    data_pagamento DATE,
    valor DECIMAL(10,2),
    status_mbm VARCHAR2(10),
    CHECK (status_mbm IN ('pago', 'pendente', 'aberto')),
    CONSTRAINT MBM_pkey PRIMARY KEY (id_pagamento) 
);

CREATE SEQUENCE MBM_id INCREMENT BY 1 START WITH 1000;

-- Mensalidade
CREATE TABLE Mensalidade (
    id integer,
    id_matricula integer,
    id_aluno integer,
    id_unidade integer,
    CONSTRAINT Mensalidade_pkey PRIMARY KEY (id),
    CONSTRAINT Mensalidade_fkey1 FOREIGN KEY (id) REFERENCES MBM (id_pagamento),
    CONSTRAINT Mensalidade_fkey2 FOREIGN KEY (id_matricula, id_aluno, id_unidade) 
        REFERENCES Matricula (id_matricula, id_aluno, id_unidade)
);

-- Remuneração
CREATE TABLE Remuneração (
    id integer,
    colaborador_recebe integer,
    CONSTRAINT Remuneração_pkey PRIMARY KEY (id),
    CONSTRAINT Remuneração_fkey1 FOREIGN KEY (id) REFERENCES MBM (id_pagamento),
    CONSTRAINT Remuneração_fkey2 FOREIGN KEY (colaborador_recebe) REFERENCES Colaborador (id_pessoa)
);

-- Avaliação de Aluno
CREATE TABLE Avaliação_Aluno (
    id_avaliação integer,
    id_aluno integer,
    id_professor integer,
    objetivo VARCHAR2(200),
    data_avaliação DATE,
    CONSTRAINT Avaliação_Aluno_pkeys PRIMARY KEY (id_avaliação, id_aluno, id_professor),
    CONSTRAINT Avaliação_Aluno_fkey1 FOREIGN KEY (id_aluno) REFERENCES Aluno (id_pessoa),
    CONSTRAINT Avaliação_Aluno_fkey2 FOREIGN KEY (id_professor) REFERENCES Professor (id_colaborador)
);

CREATE SEQUENCE Avaliação_Aluno_id INCREMENT BY 1 START WITH 1000;

-- Treino
CREATE TABLE Treino (
    id_treino integer,
    descrição VARCHAR2(200),
    id_avaliação_aluno integer,
    id_aluno integer,
    id_professor integer,
    CONSTRAINT Treino_pkey PRIMARY KEY (id_treino),
    CONSTRAINT Treino_fkey FOREIGN KEY (id_avaliação_aluno, id_aluno, id_professor)
        REFERENCES Avaliação_Aluno (id_avaliação, id_aluno, id_professor)
);

CREATE SEQUENCE Treino_id INCREMENT BY 1 START WITH 1000;