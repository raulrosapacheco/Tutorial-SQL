-- Criação da tabela funcionários
CREATE TABLE db.funcionarios(
    id_funcionario INT PRIMARY KEY,
    nome VARCHAR(50),
    departamento VARCHAR(50),
    data_contratacao DATE,
    salario DECIMAL(10,2)
)

-- Inserção de dados
INSERT INTO db.funcionarios (id_funcionario, nome, departamento, data_contratacao, salario)
VALUES (100, 'José de Alencar', 'Engenharia de Dados', '2024-01-10', 25000.00);

INSERT INTO db.funcionarios (id_funcionario, nome, departamento, data_contratacao, salario)
VALUES (101, 'Machado de Assis', 'Data Science', '2024-02-10', 19000.00);

INSERT INTO db.funcionarios (id_funcionario, nome, departamento, data_contratacao, salario)
VALUES (102, 'Cecília Meireles', 'Engenharia de Dados', '2024-02-11', 22000.00);

INSERT INTO db.funcionarios (id_funcionario, nome, departamento, data_contratacao, salario)
VALUES (103, 'Carlos Drummond de Andrade', 'DataOps', '2024-02-12', 23400.00);

INSERT INTO db.funcionarios (id_funcionario, nome, departamento, data_contratacao, salario)
VALUES (104, 'Clarice Lispector', 'DataOps', '2024-02-13', 21800.00);



-- Criação da tabela de projetos
CREATE TABLE db.projetos (
    id_projeto INT PRIMARY KEY,
    nome_projeto VARCHAR(100),
    func_id INT REFERENCES db.funcionarios(id_funcionario)
);

INSERT INTO db.projetos (id_projeto, nome_projeto, func_id)
VALUES (6001, 'Análise de Dados em Tempo Real', 101);

INSERT INTO db.projetos (id_projeto, nome_projeto, func_id)
VALUES (6002, 'Pipelines de CI/CD', 103);

INSERT INTO db.projetos (id_projeto, nome_projeto, func_id)
VALUES (6003, 'Extração de Dados de Bancos Transacionais', 104);

INSERT INTO db.projetos (id_projeto, nome_projeto, func_id)
VALUES (6004, 'Backup de Dados', 102);

INSERT INTO db.projetos (id_projeto, nome_projeto, func_id)
VALUES (6005, 'Levantamento de Requisitos', null);