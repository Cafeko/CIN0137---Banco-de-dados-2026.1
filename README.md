# Sistema de Banco de Dados: Franquia de Academia

Bem-vindo(a) ao repositório do projeto de Banco de Dados projetado para o gerenciamento de uma franquia de academias. Este projeto foi desenvolvido como requisito para a disciplina de Banco de Dados (2026.1) do Centro de Informática (CIn) da Universidade Federal de Pernambuco (UFPE).

---

## Objetivos do Sistema

O banco de dados foi modelado para garantir a integridade e consistência das informações em diversas frentes de operação da franquia. 

* **Gestão de Pessoas e Unidades:** Registrar e controlar as diferentes filiais da franquia, bem como seus colaboradores e clientes.
* **Gestão de Serviços:** Administrar os planos oferecidos e a associação deles com cada unidade e aluno.
* **Controle Financeiro:** Acompanhar transações vitais, englobando o pagamento de mensalidades e o repasse de salários aos funcionários.
* **Acompanhamento de Saúde:** Registrar avaliações e a evolução física dos alunos, gerando treinos personalizados.

---

## Arquitetura de Entidades

O sistema utiliza conceitos avançados de modelagem, incluindo especialização, entidades fracas e entidades associativas para representar o fluxo de negócios com precisão.

| Entidade Principal | Descrição |
| :--- | :--- |
| **Pessoa** | Superclasse que armazena os dados básicos de todos os indivíduos (Nome, CPF, Endereço, etc). |
| **Colaborador / Aluno** | Subclasses de Pessoa. Colaboradores possuem dados de Cargo e Salário, subdividindo-se em Professores e Funcionários (recepcionistas). Alunos representam os clientes. |
| **Unidade** | Representa as filiais físicas da academia. |
| **Plano** | Benefícios oferecidos aos clientes com variação de valor e duração. |
| **Plano_Aluno_Unidade** | Entidade associativa que efetiva a matrícula de um Aluno, em um Plano, para uma Unidade específica. |
| **Movimentações Bancárias (MBM)** | Superclasse para gestão financeira. Divide-se nas subclasses Remuneração (salários) e Mensalidade (pagamentos de alunos). |
| **Avaliação_Aluno e Treino** | Entidades que mapeiam o acompanhamento físico do aluno pelo professor e as atividades prescritas. |
| **Contato de Emergência** | Entidade fraca associada diretamente ao cadastro do Aluno. |

---

## Capacidades de Consulta e Relatórios

A modelagem foi pensada para alimentar decisões estratégicas através da geração de relatórios e consultas complexas. 

* Monitoramento de alunos com matrículas ativas por filial.
* Rastreamento rigoroso de inadimplência (mensalidades) e pendências na folha de pagamento (salários).
* Análise de faturamento, receitas e despesas por unidade em determinado período.
* Acompanhamento da taxa de adesão aos planos oferecidos para planejar expansões.
* Controle de lotação e frequência (horários de pico) para otimização de espaço e equipe.
* Histórico da evolução física e avaliações por funcionário para melhorar a retenção de alunos.

---
*Projeto desenvolvido por: Anysabele de Paula, Caio Ferreira, Dyego Ferreira, Jairo Cândido, Júlio Cesar e Vinicius Guedes.*