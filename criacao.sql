-- Equipe 2 --
/* 
Dyego Ferreira da Silva            - dfs10
Caio Ferreira Gomes da Silva       - cfgs
Júlio Cesar da SIlva               - jcs8
Anysabele de Paula Barbosa Santos  - apbs2
Jairo Cândido Gonzaga Neto         - jcgn
Vinicius guedes de macedo          - Vgm
*/

-- Script de criação dos sistema de Franquia de academia

-- Endereço
CREATE TABLE Endereços(
    cep VARCHAR2(9),
    país VARCHAR2(50),
    estado VARCHAR2(50),
    cidade VARCHAR2(50),
    bairro VARCHAR2(50),
    rua VARCHAR2(80)
);


-- Pessoa
CREATE TABLE Pessoa (
    id integer,
    nome VARCHAR2(50),
    data_nasc DATE,
    cpf VARCHAR2(11),
    cep VARCHAR2(9),
    numero VARCHAR2(5),
    complemento VARCHAR2(50),
    CONSTRAINT Pessoa_pkey PRIMARY KEY (id),
    CONSTRAINT Pessoa_fkey FOREIGN KEY (cep) REFERENCES Endereço (cep)
);

CREATE SEQUENCE Pessoa_id INCREMENT BY 1 START WITH 0;


-- Telefone
CREATE TABLE Telefone (
    id_pessoa integer,
    telefone VARCHAR2(11),
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
    CONSTRAINT Unidade_fkey FOREIGN KEY (cep) REFERENCES Endereço (cep)
);

CREATE SEQUENCE Unidade_id INCREMENT BY i START WITH 0;


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
    CONSTRAINT Alumo_fkey FOREIGN KEY (id_pessoa) REFERENCES Colaborador (id_pessoa)
);


-- Contatos de Emergencia Alunos

-- Plano

-- Treino

-- Movimentações Bancárias Mensais

-- Mensalidade

-- Remuneração

-- Avaliação de Aluno

-- Matricula (Plano_Aluno_Unidade)

-- Frequenta

-- Oferece

-- Atende